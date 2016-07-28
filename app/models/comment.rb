class Comment < ApplicationRecord
  belongs_to :cartoon
  validates :body, length: {minimum: 2}
  validates :name, presence: true
  validates :email, presence: true
end
