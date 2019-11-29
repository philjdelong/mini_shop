class CreateMerchants < ActiveRecord::Migration[5.1]
  def change
    create_table :merchants do |t|
      t.string :name,      default: "Name unknown"
      t.string :address,   default: "Address unknown"
      t.string :city,      default: "City unknown"
      t.string :state,     default: "State unknown"
      t.integer :zip,      default: 00000

      t.timestamps
    end
  end
end
