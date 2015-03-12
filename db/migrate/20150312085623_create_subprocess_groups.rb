class CreateSubprocessGroups < ActiveRecord::Migration
  def change
    create_table :subprocess_groups do |t|
      t.string :name
      t.string :code
      t.references :process_group, index: true
      t.references :knowledge_area, index: true

      t.timestamps null: false
    end
    add_foreign_key :subprocess_groups, :process_groups
    add_foreign_key :subprocess_groups, :knowledge_areas
  end
end
