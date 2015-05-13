class AddOtherContactFields < ActiveRecord::Migration
  def change
    add_column :contacts, :street_1,                 :string
    add_column :contacts, :street_2,                 :string
    add_column :contacts, :city,                     :string
    add_column :contacts, :subnational_jurisdiction, :string
    add_column :contacts, :country,                  :string

    change_column :contacts, :first_name, :string, null: false
    change_column :contacts, :last_name,  :string, null: false
  end
end
