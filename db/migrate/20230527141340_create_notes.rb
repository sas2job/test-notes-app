class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.integer :line_number
      t.string :note
      t.string :author
      t.datetime :date_of_creation

      t.timestamps
    end
  end
end
