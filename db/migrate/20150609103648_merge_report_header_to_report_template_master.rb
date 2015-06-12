class MergeReportHeaderToReportTemplateMaster < ActiveRecord::Migration
  def change
  	add_column :report_template_masters, :main_header, :string
  	add_column :report_template_masters, :main_header_style, :string
  	add_column :report_template_masters, :header1, :string
  	add_column :report_template_masters, :header1_style, :string
  	add_column :report_template_masters, :header2, :string
  	add_column :report_template_masters, :header2_style, :string
  	add_column :report_template_masters, :header3, :string
  	add_column :report_template_masters, :header3_style, :string
  	add_column :report_template_masters, :repeat_header, :boolean

  end
end
