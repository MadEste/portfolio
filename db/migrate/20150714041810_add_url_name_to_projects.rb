class AddUrlNameToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :externalname, :string
  end
end
