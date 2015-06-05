class CreateReportData < ActiveRecord::Migration
  def change
    create_table :report_data do |t|
      t.references :report_master, index: true
      t.string :column_name
      t.string :column_datatype
      t.string :sequence
      t.string :column_style
      t.string :column_display_name

      t.timestamps
    end
  end
end
