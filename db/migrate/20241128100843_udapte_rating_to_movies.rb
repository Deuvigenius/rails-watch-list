class UdapteRatingToMovies < ActiveRecord::Migration[7.2]
  def change
    change_column :movies, :rating, :float
  end
end
