class ApplicationMailer < ActionMailer::Base
  default from: %{ "TestGuru" <andreabramovsky@yandex.ru> }
  layout 'mailer'
end
