class Patient < ActiveRecord::Base
  has_many :calls

  scope :gender_vise ,->(gender) {where(:gender => gender).order("id asc")}
end
