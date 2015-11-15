class Roommate < ActiveRecord::Base
  belongs_to :user
  has_many :portions
  has_many :bills, through: :portions
end
