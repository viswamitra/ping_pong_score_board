class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :red_count, :default => 0
      t.integer :green_count, :default => 0
      t.timestamps
    end
  end
end
