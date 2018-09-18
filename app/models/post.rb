class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy #deletes all comments if post is deleted.

  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { minimum: 4 }
  validates :user_id, presence:true
end
