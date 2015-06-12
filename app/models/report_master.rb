class ReportMaster < ActiveRecord::Base
  has_many :report_template_masters
  has_many :report_datas
  has_many :report_filters
  has_one :report_header
  has_one :report_sql

end
