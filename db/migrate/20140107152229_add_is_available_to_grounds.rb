class AddIsAvailableToGrounds < ActiveRecord::Migration
  def change
    add_column :grounds, :is_available, :boolean
  end
end
