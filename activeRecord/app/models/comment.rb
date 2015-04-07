class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :record
  # attr_accessible :body, :record_id, :user_id
end
