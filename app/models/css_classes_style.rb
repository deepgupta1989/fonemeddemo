class CssClassesStyle < ActiveRecord::Base
  belongs_to :css_class
  belongs_to :style
end
