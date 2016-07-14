class CreateCprocesses < ActiveRecord::Migration
  def change
    create_table :cprocesses do |t|
      t.string :name
      t.string :purpose
      t.string :abbreviation
      t.references :area, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
