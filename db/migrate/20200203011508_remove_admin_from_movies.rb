class RemoveAdminFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :admin, :string
  end
end
