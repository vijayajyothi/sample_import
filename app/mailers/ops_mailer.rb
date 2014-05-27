class OpsMailer < ActionMailer::Base
default from: 'vkalangi1989@gmail.com' 
 def test_email
    mail(to: "vkalangi@vmware.com", subject: 'cron job done')
  end
end
