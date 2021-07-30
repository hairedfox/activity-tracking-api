class Goal < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 6, maximum: 255 }
  validates :due_date, presence: true

  scope :active, -> { where(active: true) }
end
