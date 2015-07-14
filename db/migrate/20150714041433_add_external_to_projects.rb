class AddExternalToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :externalurl, :string
  end
end
