class AddDocnameToProjectDocuments < ActiveRecord::Migration
  def change
    add_column :project_documents, :docname, :string
  end
end
