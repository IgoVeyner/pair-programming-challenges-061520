# In order for this to work, Organization needs to inherit from something...
class Organization < ActiveRecord::Base
  has_many :agents

  def active_agents
    self.agents
  end

  def erase
    self.agents.each {|a| a.destroy}
    self.destroy
  end

  def older_organizations
    Organization.where("year_formed < #{self.year_formed}")
  end
end
