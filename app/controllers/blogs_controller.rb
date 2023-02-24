class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    @blog = Blog.new
    @saving_sum = 0
  end
  
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
    if @blog.content2 != nil
      @blog_calc = @blog.content - @blog.content2
    end
  end

  def create
    Blog.create(blog_parameter)
    redirect_to blogs_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice: "削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :content2, :start_time)
  end

end