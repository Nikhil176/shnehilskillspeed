class CreateSalesTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :sales_teams do |t|
      t.string :Name
      t.string :Course
      t.string :Customer
      t.string :Status

      t.timestamps
    end
  end
end
