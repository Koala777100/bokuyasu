class List < ApplicationRecord
  has_many :list_comments
  validates :title, presence: true
end
