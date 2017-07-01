class Profile < ApplicationRecord
  has_and_belongs_to_many :device
  has_and_belongs_to_many :history
end
