class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.references :student, index: true, foreign_key: true
      t.string :random_key

      t.timestamps null: false
    end
  end
end
