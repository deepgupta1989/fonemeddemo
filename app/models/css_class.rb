class CssClass < ActiveRecord::Base
	has_many :css_classes_style
	has_many :styles, through: :css_classes_style
	belongs_to :report_template_master, foreign_key: :template_id, class_name: "ReportTemplateMaster"
end
