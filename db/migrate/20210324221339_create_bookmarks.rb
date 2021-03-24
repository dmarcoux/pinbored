# frozen_string_literal: true

class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :title, default: "", null: false
      t.text :url, default: "", null: false
      t.text :description, default: "", null: false
      t.integer :visibiliy, default: 0, null: false

      t.timestamps

      t.index :visibility
    end
  end
end
