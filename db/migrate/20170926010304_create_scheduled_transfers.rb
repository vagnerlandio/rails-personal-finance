class CreateScheduledTransfers < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduled_transfers do |t|
      t.references :transfer_transaction, foreign_key: true
      t.references :frequency, foreign_key: true
      t.integer :repeat, default: 1
      t.integer :end

      t.timestamps
    end
  end
end
