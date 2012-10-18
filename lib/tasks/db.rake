
namespace :db do
  desc "Recreate database to latest migration"
  task :recreate do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
  end
end