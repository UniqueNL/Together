class Theme < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
