class Project < ActiveRecord::Base
  has_many :project_teams, dependent: :destroy
  has_many :project_documents, dependent: :destroy
  accepts_nested_attributes_for :project_teams, :allow_destroy => true
end
