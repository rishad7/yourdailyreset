class RegistrationWorker
  include Sidekiq::Worker
  sidekiq_options queue: 'mailers'

  def perform(reg_id)
    reg = Registration.find_by(id: reg_id)
    RegistrationMailer.mail_to_user(reg).deliver
    RegistrationMailer.mail_to_admin(reg).deliver
  end
end
