class AddTemplateIdToCssClasses < ActiveRecord::Migration
  def change
    add_column :css_classes, :template_id, :integer
  end
end
