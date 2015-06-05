class CreateReportFilters < ActiveRecord::Migration
  def change
    create_table :report_filters do |t|
      t.references :report_master, index: true
      t.string :field_name
      t.boolean :mandatory

      t.timestamps
    end
  end
end
