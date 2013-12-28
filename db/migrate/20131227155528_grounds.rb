class Grounds < ActiveRecord::Migration
def self.up
    create_table :grounds do |t|
	t.column :name, :string, :limit => 32, :null => false
	t.column :ground_type, :string
	t.column :city_id, :integer
	t.column :price, :integer
	t.column :bdate, :date
	t.column :session, :string
     end
  end

  def self.down
    drop_table :grounds
  end
end
