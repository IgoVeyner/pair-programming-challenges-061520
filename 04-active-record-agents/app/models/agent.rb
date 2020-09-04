# In order for this to work, Agent needs to inherit from something...
class Agent < ActiveRecord::Base
  belongs_to :organization

  def fellow_agents
    Agent.where(organization_id: self.organization_id).where.not(id: self.id)
  end

  def self.names
    self.all.map {|agent| agent.name}
  end

  def activate
    self.active_status = true
    self.save
  end

  def self.active_agents
    Agent.where(active_status: true)
  end

  def defect(org)
    self.organization = org
    self.save
  end

  def self.rogue_agents 
    Agent.where(organization_id: nil)
  end
end
