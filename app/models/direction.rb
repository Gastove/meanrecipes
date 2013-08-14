
# Recipe direction. A Recipe must have one or more of these.

class Direction < ActiveRecord::Base

  belongs_to :recipe
  validates :text, :ordinality

end
