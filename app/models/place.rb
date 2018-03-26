class Place < ApplicationRecord
 # paginates_per 5
 belongs_to :user
 has_many :comments
 has_many :photos

 geocoded_by :address
 after_validation :geocode

 validates :name, presence: true, length: { minimum: 3, message: "name must be greater than 3 characters" }
 validates :description, presence: true
 validates :address, presence: true
end
