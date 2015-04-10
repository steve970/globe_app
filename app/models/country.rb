class Country < ActiveRecord::Base

  has_many :users
  has_many :places, through: :countries

end
