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

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@whispering-fjord-2283.example>"
    headers["In-Reply-To"] = "<post/#{post.id}@whispering-fjord-2283.example>"
    headers["References"] = "<post/#{post.id}@whispering-fjord-2283.example>"

    @post = post

    mail(to: post.user.email, subject: "You're following, #{post.title}!")
  end
end
