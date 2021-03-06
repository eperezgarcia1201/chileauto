class Company < ApplicationRecord
  belongs_to :user
  has_many :parts
 	validates :name, presence: true, length: {minimum: 5, maximum: 15}
 	validates :description, presence: true, length: {minimum: 5, maximum: 30}
end
