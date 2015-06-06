class ReportMaster < ActiveRecord::Base
  belongs_to :report_template_master
  has_many :report_datas
  has_many :report_filters
  has_one :report_header
  has_one :report_sql

end
