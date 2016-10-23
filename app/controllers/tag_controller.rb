class TagController < ApplicationController
  def life
    @posts = Post.tagged_with("life")
  end

  def interior
    @posts = Post.tagged_with("interior")
  end

  def hobby
    @posts = Post.tagged_with("hobby")
  end

  def electric
    @posts = Post.tagged_with("electric")
  end

  def outdoor
    @posts = Post.tagged_with("outdoor")
  end

  def vehicle
    @posts = Post.tagged_with("vehicle")
  end

  def others
    @posts = Post.tagged_with("others")
  end
  
end
