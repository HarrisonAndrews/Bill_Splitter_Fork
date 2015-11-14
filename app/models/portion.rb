class Portion < ActiveRecord::Base
  belongs_to :bill
  belongs_to :roommate
end
