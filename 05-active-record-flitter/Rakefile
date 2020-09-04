require_relative "./config/environment"
require 'standalone_migrations'
StandaloneMigrations::Tasks.load_tasks

desc "Opens the console for debugging"
task :console do
  Pry.start
end
