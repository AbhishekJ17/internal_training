class CreateFaculties < ActiveRecord::Migration[6.0]
  def change
    create_table :faculties do |t|
      t.references :college, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_joining

      t.timestamps
    end
  end
end
