class ChangeLossAndExposureFromFloatToDecimal < ActiveRecord::Migration[7.1]
  def change
    change_column :alerts, :loss, :decimal, :precision => 8, :scale => 2
    change_column :alerts, :exposure, :decimal, :precision => 8, :scale => 2
  end
end
