class CreateCssClassesStyles < ActiveRecord::Migration
  def change
    create_table :css_classes_styles do |t|
      t.references :css_class, index: true
      t.references :style, index: true

      t.timestamps
    end
  end
end
