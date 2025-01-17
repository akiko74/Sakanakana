class AddSitemapToDivepoints < ActiveRecord::Migration
  def self.up
    add_column :divesites, :sitemap_file_name, :string
    add_column :divesites, :sitemap_content_type, :string
    add_column :divesites, :sitemap_file_size, :integer
    add_column :divesites, :sitemap_updated_at, :datetime
  end

  def self.down
    remove_column :divesites, :sitemap_file_name
    remove_column :divesites, :sitemap_content_type
    remove_column :divesites, :sitemap_file_size
    remove_column :divesites, :sitemap_updated_at
  end
end
