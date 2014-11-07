class Zoo < ActiveRecord::Base
  has_many :animals

  validates :name, :location, {
    presence: true
  }

  validates :name, {
    uniqueness: true
  }
end
