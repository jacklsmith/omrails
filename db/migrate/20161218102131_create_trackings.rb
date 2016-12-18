class CreateTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :trackings do |t|
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
