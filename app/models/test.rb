class Test < ApplicationRecord
  validates :date, uniqueness: true
end
