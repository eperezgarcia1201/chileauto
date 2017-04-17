class Company < ApplicationRecord
  belongs_to :user
  has_many :parts, through: :user
end
