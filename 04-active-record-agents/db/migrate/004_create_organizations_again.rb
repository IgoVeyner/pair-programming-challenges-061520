class CreateOrganizationsAgain < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.integer :year_formed
    end
  end
end