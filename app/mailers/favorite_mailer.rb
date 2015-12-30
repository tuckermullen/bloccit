class FavoriteMailer < ApplicationMailer
  default from: "mullentucker@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@whispering-fjord-2283.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@whispering-fjord-2283.example>"
    headers["References"] = "<post/#{post.id}@whispering-fjord-2283.example>"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end
end
