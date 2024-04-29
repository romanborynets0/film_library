module CommentsHelper
  def edit?
    @user.comments.exists?(id: @record)
  end
  alias destroy? edit?
  alias update? edit?
end