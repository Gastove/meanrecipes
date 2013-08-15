
# Recipe direction. A Recipe must have one or more of these.

class Direction < ActiveRecord::Base

  attr_accessible :body, :ordinality
  belongs_to :recipe
  validates :body, presence: true

end
