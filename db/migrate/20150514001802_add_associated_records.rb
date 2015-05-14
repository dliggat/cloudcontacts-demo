class AddAssociatedRecords < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string     :number
      t.string     :label
      t.belongs_to :contact, null: false

      t.timestamps null: false
    end

    create_table :emails do |t|
      t.string     :address
      t.string     :label
      t.belongs_to :contact, null: false

      t.timestamps null: false
    end
  end
end
