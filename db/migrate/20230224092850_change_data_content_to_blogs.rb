class ChangeDataContentToBlogs < ActiveRecord::Migration[7.0]
  def change
    change_column :blogs, :content, :integer
    change_column :blogs, :content2, :integer
  end
end
