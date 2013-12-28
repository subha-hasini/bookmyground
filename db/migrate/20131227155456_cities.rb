class Cities < ActiveRecord::Migration
  def self.up
  	create_table :cities do |t|
       t.column :name, :string
    end
    City.create :name => "Chennai"
    City.create :name => "Coimbatore"
    City.create :name => "Bangalore"
    City.create :name => "Pondicherry"
  end

  def self.down
  	drop_table :cities
  end
end
