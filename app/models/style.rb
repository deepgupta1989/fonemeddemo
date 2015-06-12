class Style < ActiveRecord::Base
	has_many :css_classes_style
	has_many :css_styles,through: :css_classes_style
end
