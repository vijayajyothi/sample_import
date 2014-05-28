require 'csv'
namespace :data do
  task :import,[:filename] => :environment do
    CSV.foreach('sample2.csv', :headers => true) do |row|
       Cluster.create!(row.to_hash)
    end

OpsMailer.test_email.deliver
  end
end 
