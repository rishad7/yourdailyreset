class Api::V1::ProjectsController < Api::ApiController
    before_action :set_project, only: [:destroy, :update, :delete_project_class, :train_model, :save_as_draft]

    def index
    end

    def create
        @project = Project.new(project_params.merge(user_id: current_user.id))
        if @project.save
            store_model_image if !params[:image].empty?
            create_classes
            render json: ProjectSerializer.new(@project).serialized_json, status: :created
        else
            render json: @project.errors, status: :unprocessable_entity 
        end
    end

    def update
        @previous_no_of_classes = @project.no_of_classes
        if @project.update(project_params)
			store_model_image if params[:image]
            update_classes
            render json: ProjectSerializer.new(@project).serialized_json, status: :ok
		end
    end

    def destroy
        if @project
            @project.destroy!
            head :no_content
        end
    end

    def add_project_class_attachments
        project_id = params[:project_id].to_i
        ProjectClassAttachment.where(project_id: project_id).destroy_all
        params[:attachments].each do |attachment|
            project_class_id = attachment['id'].to_i
            attachment['attributes']['project_class_images_processed']['data'].each do |payload|
                ProjectClassAttachment.create(payload: payload, project_id: project_id, project_class_id: project_class_id)
            end
        end
        render json: {message: "images added"}, status: :ok
    end

    def reanme_project_class
        project_class_id = params[:id].to_i
        @project_class = ProjectClass.find(project_class_id)
        if @project_class.update(name: params[:name])
            render json: {message: "class renamed"}, status: :ok
        end
    end

    def delete_project_class
        project_class_id = params[:class_id].to_i
        project_class_deleted = ProjectClass.where(id: project_class_id).destroy_all
        @project.take! if project_class_deleted.present?
        head :no_content
    end

    def train_model
        @project.update(is_trained: true)
        render json: {message: "trained"}, status: :created
    end

    def save_as_draft
        @project.update(is_saved_to_draft: true)
        render json: {message: "saved to draft"}, status: :created
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :no_of_classes, :is_trained, :is_saved_to_draft)
    end

    def set_project
        @project = Project.where(user_id: current_user.id).find(params[:id])
    end

    def store_model_image
        @project.attach_base64(:image, params[:image])
    end

    def create_classes
        params[:no_of_classes].times do |i|
            project_name = "Class #{i+1}"
            @project_class = ProjectClass.create(name: project_name, project_id: @project.id)
        end
    end

    def update_classes
        if @previous_no_of_classes != params[:no_of_classes]
            ProjectClass.where(project_id: @project.id).destroy_all
            create_classes
        end
    end

end  