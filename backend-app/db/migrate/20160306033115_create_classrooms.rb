class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :teacher_name

      t.timestamps null: false
    end
  end
end
