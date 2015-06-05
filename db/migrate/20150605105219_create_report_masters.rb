class CreateReportMasters < ActiveRecord::Migration
  def change
    create_table :report_masters do |t|
      t.string :report_name
      t.references :report_template_master, index: true
      t.boolean :status
      t.string :created_by
      t.string :updated_by
      
      t.timestamps
    end
  end
end
