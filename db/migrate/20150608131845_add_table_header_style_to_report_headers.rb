class AddTableHeaderStyleToReportHeaders < ActiveRecord::Migration
  def change
    add_column :report_headers, :table_header_style, :string
  end
end
