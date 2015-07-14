class AddFlashToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :flash, :string
  end
end
