class CssClass < ActiveRecord::Base
	has_many :css_classes_style
	has_many :styles,through: :css_classes_style
end
