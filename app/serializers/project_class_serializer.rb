class ProjectClassSerializer < ApplicationSerializer
    attributes :name

    attribute :project_class_images do |project_class|
        ProjectClassAttachmentSerializer.new(project_class.project_class_attachments)
    end

    attribute :project_class_images_processed do |project_class|
        ProjectClassAttachmentSerializer.new(project_class.project_class_attachments)
    end
    
    # attribute :image do |project|
    #   project.fetch_model_image
    # end
end