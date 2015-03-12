class CreateProjectDocuments < ActiveRecord::Migration
  def change
    create_table :project_documents do |t|
      t.references :pmbok_doc, index: true
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :project_documents, :pmbok_docs
    add_foreign_key :project_documents, :projects
  end
end
