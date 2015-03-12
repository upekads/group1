class User < ActiveRecord::Base
  has_many :project_teams
end
