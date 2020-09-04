class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :year_trained
      t.boolean :active_status
      t.string :specialty
    end
  end
end
