class BokuyasuList < ApplicationRecord
  attachment :image
  validates :title, presence: true
end
