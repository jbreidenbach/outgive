class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :campaigns, :schoool_id, :school_id
  end


end
