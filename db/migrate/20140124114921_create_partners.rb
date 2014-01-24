class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :title
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
