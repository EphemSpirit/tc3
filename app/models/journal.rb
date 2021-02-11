class Journal < ApplicationRecord
  belongs_to :user
  has_many :tags, as: :taggable

  validates :title, :body, presence: true
end
