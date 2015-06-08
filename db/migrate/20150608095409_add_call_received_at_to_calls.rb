class AddCallReceivedAtToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :call_received_at, :datetime
  end
end
