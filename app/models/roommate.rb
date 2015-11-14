class Roommate < ActiveRecord::Base
  belongs_to :house
  has_many :portions
  has_many :bills, through: :portions
end
