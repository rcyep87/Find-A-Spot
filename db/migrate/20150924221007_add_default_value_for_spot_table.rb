class AddDefaultValueForSpotTable < ActiveRecord::Migration
  def change
    change_column_default(:spots, :available, 'false')
  end
end
