class ProjectDocument < ActiveRecord::Base
  belongs_to :pmbok_doc
  belongs_to :project
end
