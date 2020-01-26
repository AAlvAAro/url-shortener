class RenameUrlsShortToSlug < ActiveRecord::Migration[6.0]
  def change
    rename_column :urls, :short, :slug
  end
end
