class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.text :content2
      t.datetime :start_time
      
      t.timestamps
    end
  end
end
