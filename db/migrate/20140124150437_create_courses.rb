class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :attendees, default: 15
      t.decimal :price, precision: 7, scale: 2, default: 0.00
      t.references :partner, index: true

      t.timestamps
    end
  end
end
