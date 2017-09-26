class CreateFrequencies < ActiveRecord::Migration[5.1]
  def change
    create_table :frequencies do |t|
      t.string :name, limit: 45

      t.timestamps
    end
  end
end
