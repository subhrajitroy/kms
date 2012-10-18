class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :project_uuid
      t.integer :reviewer_id
      t.string :status
      t.string :comments
      t.integer :project_id

      t.timestamps
    end
  end
end
