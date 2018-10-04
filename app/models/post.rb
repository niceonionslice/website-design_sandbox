class Post < ApplicationRecord
  # 5文字以上必要
  validates :title, presence: true, length: { minimum: 5 }
end
