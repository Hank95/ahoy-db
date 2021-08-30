class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :img_url
      t.belongs_to :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
