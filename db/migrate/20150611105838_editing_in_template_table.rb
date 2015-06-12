class EditingInTemplateTable < ActiveRecord::Migration
  def change
  	add_column :templates, :html_content, :text
  	add_column :templates, :parent_id, :integer
  end
end
