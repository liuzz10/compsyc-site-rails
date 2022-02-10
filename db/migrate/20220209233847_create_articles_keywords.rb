class CreateArticlesKeywords < ActiveRecord::Migration[7.0]
  def change
    create_table :articles_keywords, id: false do |t|
      t.belongs_to :article
      t.belongs_to :keyword
    end
  end
end
