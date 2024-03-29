class BlogPosts::CoverImages < ApplicationController
  before_action :authenticate_user!
  before_action :set_post

  def destroy
    @post.cover_image.purge_later
    redirect_to edit_post_path(@post)
  end

  private

  def set_post
    @post = Post.find(params[:post.id])
  end
end