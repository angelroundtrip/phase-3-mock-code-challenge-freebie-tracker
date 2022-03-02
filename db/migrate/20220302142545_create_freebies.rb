class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.string :value
      t.integer :company_id     # foreign key
      t.integer :dev_id       # foreign key
    end
  end
end
