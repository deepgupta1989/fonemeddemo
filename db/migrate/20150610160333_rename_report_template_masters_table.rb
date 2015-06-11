class RenameReportTemplateMastersTable < ActiveRecord::Migration
  def self.up
    rename_table :report_template_masters, :templates
  end

  def self.down
    rename_table :templates, :report_template_masters
  end
end
