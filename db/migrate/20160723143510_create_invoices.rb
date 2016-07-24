class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :Name
      t.datetime :Date
      t.string :Course
      t.decimal :Price
      t.string :Address
      t.decimal :Phone
  
      t.timestamps
    end
  end
end
