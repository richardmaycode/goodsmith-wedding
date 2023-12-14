class Reservation < ApplicationRecord
  PASSCODE = 'forever'
  enum response: %i[unable_to_attend attending attending_with_guest]

  has_and_belongs_to_many :allergens

  validates :full_name, presence: true
  validates :response, presence: true
  validates :phone, presence: true
  validates :address_one, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true

  validate :passcode_correct, on: :create

  def passcode_correct
    errors.add(:passcode, 'is incorrect') unless passcode.downcase == PASSCODE
  end
end
