class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :callerid
      t.references :patient, index: true
      t.string :calltype
      t.float :length

      t.timestamps
    end
  end
end
