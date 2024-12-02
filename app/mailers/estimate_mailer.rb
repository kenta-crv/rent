class EstimateMailer < ActionMailer::Base
  default from: "info@ebisu-hotel.tokyo"
  def received_email(estimate)
    @estimate = estimate
    mail to: "info@ebisu-hotel.tokyo"
    mail(subject: '恵比寿レントサービス') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.email
    mail(subject: 'お申し込みいただきありがとうございました。') do |format|
      format.text
    end
  end
end