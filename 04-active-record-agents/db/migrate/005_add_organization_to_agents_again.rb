class AddOrganizationToAgentsAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :agents, :organization_id, :integer
  end
end