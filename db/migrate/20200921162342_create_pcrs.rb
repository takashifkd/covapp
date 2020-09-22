class CreatePcrs < ActiveRecord::Migration[6.0]
  def change
    create_table :pcrs do |t|
      t.string :date
      t.integer :tested
      t.integer :positive

      t.timestamps
    end
  end
end
