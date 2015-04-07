class Track < ActiveRecord::Base
  belongs_to :record
  # attr_accessible :title, :record_id
end
