class Event < ApplicationRecord
  validates :start_date, presence: true, if: :in_the_futur
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }, if: :is_multiple_five?
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
  validates :location, presence: true

  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :event_admin, class_name: "User"

  def in_the_futur
    errors.add(:start_date, "You can't create an even in the past.") unless start_date > DateTime.now
  end

  def is_multiple_five?
    errors.add(:duration, "Must be a multiple of five!") unless duration % 5 == 0
  end
end
