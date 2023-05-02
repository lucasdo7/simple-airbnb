class Flat < ApplicationRecord
  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true

  def pet_friendly_display(pet_friendly)
    case pet_friendly
    when false
      'No Pets'
    when true
      'Pets Allowed'
    else
      ''
    end
  end
end
