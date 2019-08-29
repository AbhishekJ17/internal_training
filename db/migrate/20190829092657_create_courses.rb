class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :faculty, null: false, foreign_key: true
      t.references :subject, null: false, foreign_key: true
      t.time :scheduled_time

      t.timestamps
    end
  end
end
