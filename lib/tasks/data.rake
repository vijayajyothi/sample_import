
namespace :data do
  desc "import data from files to database"
  task :import => :environment do
    file = File.open("sample.csv")
    file.each do |line|
      attrs = line.split(":")
      p = Product.find_or_initialize_by_identifier(attrs[0])
      p.vcserver = attrs[1]
      p.save!
    end
	OpsMailer.test_email.deliver
  end
end

