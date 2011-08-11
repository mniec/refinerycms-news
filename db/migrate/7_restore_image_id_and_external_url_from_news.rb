class RestoreImageIdAndExternalUrlFromNews < ActiveRecord::Migration

  def self.up
    unless ::NewsItem.column_names.map(&:to_sym).include?(:external_url)
      add_column ::NewsItem.table_name, :external_url, :string
    end
    unless ::NewsItem.column_names.map(&:to_sym).include?(:image_id)
      add_column ::NewsItem.table_name, :image_id, :integer
    end
  end

  def self.down
      if ::NewsItem.column_names.map(&:to_sym).include?(:external_url)
        remove_column ::NewsItem.table_name, :external_url
      end
      if ::NewsItem.column_names.map(&:to_sym).include?(:image_id)
        remove_column ::NewsItem.table_name, :image_id
      end
    end

end
