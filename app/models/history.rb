class History < ApplicationRecord
  has_and_belongs_to_many :profile
end
