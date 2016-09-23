class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status, :default => "NEW"
      t.string :name

      t.timestamps null: false
    end
  end
end
