class MergeReportHeaderToReportTemplateMaster < ActiveRecord::Migration
  def change
  	add_column :templates, :main_header, :string
  	add_column :templates, :main_header_style, :string
  	add_column :templates, :header1, :string
  	add_column :templates, :header1_style, :string
  	add_column :templates, :header2, :string
  	add_column :templates, :header2_style, :string
  	add_column :templates, :header3, :string
  	add_column :templates, :header3_style, :string
  	add_column :templates, :repeat_header, :boolean

  end
end
