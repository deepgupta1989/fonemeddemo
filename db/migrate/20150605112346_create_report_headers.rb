class CreateReportHeaders < ActiveRecord::Migration
  def change
    create_table :report_headers do |t|
      t.references :report_master, index: true
      t.string :main_header
      t.string :main_header_style
      t.string :header1
      t.string :header1_style
      t.string :header2
      t.string :header2_style
      t.string :header3
      t.string :header3_style
      t.boolean :repeat_header

      t.timestamps
    end
  end
end
