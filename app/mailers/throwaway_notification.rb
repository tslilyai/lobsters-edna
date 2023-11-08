class ThrowawayNotification < ApplicationMailer
  def notify(user, tag, did)
    @did = did 
    @uid = user.id
    @tag = tag

    mail(
      :to => user.email,
      :subject => "[#{Rails.application.name}] Your tag posts have been anonymized"
    )
  end
end
