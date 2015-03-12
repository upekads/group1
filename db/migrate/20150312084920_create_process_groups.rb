class CreateProcessGroups < ActiveRecord::Migration
  def change
    create_table :process_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
