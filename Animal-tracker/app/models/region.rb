class Region < ActiveRecord::Base
  validates :region_name, presence: true
end
