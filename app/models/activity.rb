class Activity < ApplicationRecord
  validates :name, presence: true, length: { minimum: 6, maximum: 255 }
end
