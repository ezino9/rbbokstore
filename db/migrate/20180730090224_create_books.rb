class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbm
      t.string :year
      t.string :price
      t.string :buy
      t.text :except
      t.string :format
      t.integer :pages
      t.string :coverpath

      t.timestamps
    end
  end
end
