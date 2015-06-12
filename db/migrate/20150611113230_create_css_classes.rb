class CreateCssClasses < ActiveRecord::Migration
  def change
    create_table :css_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
