class CreateReportTemplateMasters < ActiveRecord::Migration
  def change
    create_table :report_template_masters do |t|
      t.string :template_name
      t.boolean :status
      t.string :created_by
      t.string :updated_by
      
      t.timestamps
    end
  end
end
