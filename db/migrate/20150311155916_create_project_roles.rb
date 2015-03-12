class CreateProjectRoles < ActiveRecord::Migration
  def change
    create_table :project_roles do |t|
      t.string :rolename

      t.timestamps null: false
    end
  end
end
