class CreateReportSqls < ActiveRecord::Migration
  def change
    create_table :report_sqls do |t|
      t.references :report_master, index: true
      t.string :sql_query
      t.string :parameter_sequence
      t.boolean :status
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
