class CreateWilds < ActiveRecord::Migration
  def change
    create_table :wilds do |t|
      t.string :name

      t.timestamps
    end
  end
end
