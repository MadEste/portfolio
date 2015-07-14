class AddDimensionsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :fx, :integer
    add_column :projects, :fy, :integer
    add_column :projects, :largeimg, :string
  end
end
