class ConfirmationMailer < ApplicationMailer
  # Subject can berai set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def confirm(comment)

    @comment = comment
    mail(
      to: @comment.user.email,
      subject: "Report Confirmation 🤩"
    )

  end
end
