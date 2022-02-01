class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end


# def method(arg1, arg2, hash1, hash2)
# end

# method 1, 2, { a: 2 }, { b: 4 }


# def method2(arg1, arg2, hash)
# end

# method2 1, 2, a: 2, b: 4
# method2 1, 2, {a: 2, b: 4 }


# def comments
#     Comment.where(article_id: self.id)
#     => 'SELECT * FROM comments WHERE article_id = 3'
# end

# def has_many(arg1, options = {})
#     if options[:dependent] == :destroy
#         comments.destroy_all
#     elsif options[:dependent] == :nullify
#         comments.update_all(article_id: nil)
#     end
# end

# Gemfile
# --------
# gem 'devise'