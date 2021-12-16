class ProjectSerializer < ApplicationSerializer
  attributes :name, :description, :no_of_classes, :is_trained, :is_saved_to_draft, :hashid
  
  attribute :image do |project|
    project.fetch_model_image
  end

  attribute :project_classes do |project, params|
    ProjectClassSerializer.new(project.project_classes.order('created_at ASC'))
  end

  attribute :no_if_images do |project|
    project.project_class_attachments.count
  end
end