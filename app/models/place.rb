class Place < ActiveRecord::Base

  belongs_to :country
  belongs_to :user

  validates :country_id, uniqueness: { scope: :user_id}

end
