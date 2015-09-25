class ChangingSpotAvailabilityDefaultToTrue < ActiveRecord::Migration
  def change
    change_column_default(:spots, :available, 'true')
  end
end
