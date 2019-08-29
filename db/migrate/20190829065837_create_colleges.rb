class CreateColleges < ActiveRecord::Migration[6.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
