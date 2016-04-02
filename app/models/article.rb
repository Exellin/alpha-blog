class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum:3, maxiumum: 50}
  validates :description, presence: true, length: {minimum:10, maxiumum:300}
  validates :user_id, presence: true

end