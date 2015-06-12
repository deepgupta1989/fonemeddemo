class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.hstore :elements

      t.timestamps
    end
  end
end
