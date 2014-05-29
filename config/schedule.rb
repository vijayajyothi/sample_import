# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#

set :output, "/home/workspace/sample2/cron_log.log"
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# commenting this part of code for stopping the rake to run simply.. uncomment the three lines for rake task to schedulee again and update the cron
#every :hour  do
#  rake "data:import"
#end

# Run below line for updating cronjobs after updating this file.
# whenever --update-crontab --set 'environment=development'
# RAILS_ENV=development bundle exec rake test:cron --silent
