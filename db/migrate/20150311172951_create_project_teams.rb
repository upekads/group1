class CreateProjectTeams < ActiveRecord::Migration
  def change
    create_table :project_teams do |t|
      t.references :user, index: true
      t.references :project, index: true
      t.references :project_role, index: true

      t.timestamps null: false
    end
    add_foreign_key :project_teams, :users
    add_foreign_key :project_teams, :projects
    add_foreign_key :project_teams, :project_roles
  end
end
