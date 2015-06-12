class ReportTemplateMaster < ActiveRecord::Base
  self.table_name = "templates"
  belongs_to :report_master
  
	

  # followee_follows "names" the Follow join table for accessing through the followee association
  has_many :children, foreign_key: :parent_id, class_name: "ReportTemplateMaster"    
  # source: :followee matches with the belong_to :followee identification in the Follow model   
  #has_many :children, foreign_key: :parent_id, class_name: "ReportTemplateMaster"
end
