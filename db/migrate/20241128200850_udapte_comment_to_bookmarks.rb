class UdapteCommentToBookmarks < ActiveRecord::Migration[7.2]
  def change
    change_column :bookmarks, :comment, :text
  end
end
