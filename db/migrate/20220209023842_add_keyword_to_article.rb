class AddKeywordToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :keyword, :text
  end
end
