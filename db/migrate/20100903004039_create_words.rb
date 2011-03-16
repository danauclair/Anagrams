class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.column :value, :string, :null => false
      t.column :score, :integer, :default => 0, :null => false
      t.column :a, :integer, :default => 0, :null => false
      t.column :b, :integer, :default => 0, :null => false
      t.column :c, :integer, :default => 0, :null => false
      t.column :d, :integer, :default => 0, :null => false
      t.column :e, :integer, :default => 0, :null => false
      t.column :f, :integer, :default => 0, :null => false
      t.column :g, :integer, :default => 0, :null => false
      t.column :h, :integer, :default => 0, :null => false
      t.column :i, :integer, :default => 0, :null => false
      t.column :j, :integer, :default => 0, :null => false
      t.column :k, :integer, :default => 0, :null => false      
      t.column :l, :integer, :default => 0, :null => false
      t.column :m, :integer, :default => 0, :null => false
      t.column :n, :integer, :default => 0, :null => false      
      t.column :o, :integer, :default => 0, :null => false
      t.column :p, :integer, :default => 0, :null => false
      t.column :q, :integer, :default => 0, :null => false
      t.column :r, :integer, :default => 0, :null => false
      t.column :s, :integer, :default => 0, :null => false
      t.column :t, :integer, :default => 0, :null => false
      t.column :u, :integer, :default => 0, :null => false
      t.column :v, :integer, :default => 0, :null => false
      t.column :w, :integer, :default => 0, :null => false
      t.column :x, :integer, :default => 0, :null => false
      t.column :y, :integer, :default => 0, :null => false
      t.column :z, :integer, :default => 0, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
