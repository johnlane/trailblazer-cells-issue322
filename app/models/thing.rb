class Thing < ActiveRecord::Base
  has_many :others, :dependent => :destroy
end
