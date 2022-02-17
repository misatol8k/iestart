class Specialist < ApplicationRecord

  has_many :contacts
  extend OrderAsSpecified
end
