class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :body
      t.string :disponibility

      t.timestamps
    end
  end
end
