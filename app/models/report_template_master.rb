class ReportTemplateMaster < ActiveRecord::Base
  self.table_name = "templates"
  has_many :report_masters
  
end
