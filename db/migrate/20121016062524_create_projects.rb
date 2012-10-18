class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :uuid
      t.string :name
      t.string :description
      t.string :category
      t.string :status

      t.timestamps
    end
  end
end
