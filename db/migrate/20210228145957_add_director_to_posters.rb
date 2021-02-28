class AddDirectorToPosters < ActiveRecord::Migration[6.1]
  def change
    add_column :posters, :director, :string
  end
end
