class AddStatusToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :status, :string
  end
end

# AddxxxToxxx

# bin/rails generate migration add_status_to_articles

# class AddStatusToArticles < ActiveRecord::Migration[7.0]
#   def change
#     add_column :articles, :status, :string
#     #            ^            ^        ^
#     #           table       column    type
#   end
# end

# # schema_migrations
# # 2022...
# # 2022...
# # 2022...
# # 2022...

# # What migration can do

# class ChangeStatusInArticles < ActiveRecord::Migration[7.0]
#   def up
#     add_column :articles, :status2, :integer
#     #            ^            ^        ^
#     #           table       column    type

#     Article.all.each do |article|
#       article.status2 = article.status == 'done' ? 1 : 2
#       article.save
#     end
#   end

#   def down
#     remove_column :articles, :status2
#   end
# end