# Agents of Active Record

Based on all the super secret activity that's been going on, we need to create a database of secret agents and organizations to keep track of them.

## Deliverables

Create a migration that builds an agents table. This table should have the following columns:
- `name` => the agent's code name
- `year_trained` => an integer that represents the year an agent finished their training
- `active_status` => essentially a boolean determining whether the agent is currently active or not
- `specialty` => the agent's specialty

Create a migration that builds an organizations table. This table should have the following columns:
- `name` => the name of the organization
- `year_formed` => the year as an integer for when the organization was formed

We forgot something in our agents! They need another column to belong to an organization. Build a third migration that adds that column to the agents table.
*Hint: How does the database keep track of associations?*

Now it's time to create a few custom methods for our agents and organizations.
*Hint: You can create instance methods as usual inside the agent class which utilize or add to the ActiveRecord functionality*

*A reminder that `#` stands for an instance method and `.` stands for a class method*

### Agent

`#fellow_agents` => returns a list of other agents in the organization (this list shouldn't include the current agent)

`.names` => returns an array of all the agent names

`#activate` => sets the agent's active_status to `true`

`.active_agents` => returns a list of all active agents

`#defect` => takes in an argument of an organization and makes that the agent's new organization

`.rogue_agents` => returns a list of all agents without an organization

### Organizations

`#active_agents` => returns a list of all that organization's active agents

`#erase` => delete the organization and all agents who are part of the organization

`#older_organizations` => returns a list of every organization older than the one this method was called on

*Hints*

- For building migrations, reference the syntax here: https://edgeguides.rubyonrails.org/active_record_migrations.html

- You don't need to generate the migration files, just the migration content inside the files

- When building methods in the agent and organization models, try and utilize the relationship methods given by ActiveRecord

- You can utilize the seeds file to quickly recreate a new group of agents and organizations to test usinge `rake db:seed` in the terminal

- To test your methods, you can call `rake console` in the terminal
