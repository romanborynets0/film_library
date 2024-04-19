class CommentMailer < ApplicationMailer
  def created
    @email = params[:email]
    @comment = params[:comment]
    @subject = 'New comment created'

    mail to: @user.mail, subject: @subject
  end
end
