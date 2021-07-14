class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :body, presence:true, length: {minimum:10}
end
