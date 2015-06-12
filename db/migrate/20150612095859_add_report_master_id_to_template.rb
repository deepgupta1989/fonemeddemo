class AddReportMasterIdToTemplate < ActiveRecord::Migration
  def change
  	add_column :templates, :report_master_id, :integer
  	remove_column :report_masters, :report_template_master_id
  end
end
