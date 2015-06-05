class Patient < ActiveRecord::Base
  has_many :calls
end
