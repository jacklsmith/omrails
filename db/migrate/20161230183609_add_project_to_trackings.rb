class AddProjectToTrackings < ActiveRecord::Migration[5.0]
  def change
    add_column :trackings, :project_id, :int
  end
end
