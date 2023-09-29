class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.string :line1
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
