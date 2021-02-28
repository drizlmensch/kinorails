class CreatePosters < ActiveRecord::Migration[6.1]
  def change
    create_table :posters do |t|
      t.string :movie
      t.integer :year
      t.string :url

      t.timestamps
    end
  end
end
