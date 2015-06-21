class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    #post_paramsでprivate以下を呼び出し(Postクラスでnewメソッドを呼び出す。空っぽの行を作る)
    #def newで作ったPost.newを使う
    @post = Post.new(post_params)
    #データベースに保存
    @post.save
    redirect_to "/posts/#{@post.id}"
  end

  def show
    #書かなくてok
    @post = Post.find(params[:id])
    @q = Post.search(params[:q])
    @posts = @q.result.page(params[:page])
  end

  def index
    #@posts = Post.page(params[:page])
    @q = Post.search(params[:q])
    @posts = @q.result.page(params[:page])
  end

  def edit
    #書かなくてok
     @post = Post.find(params[:id])
     @q = Post.search(params[:q])
     @posts = @q.result.page(params[:page])
  end

  def update
    #:idでpost, find
    #最初の行はいらない
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  def destroy
    #最初の行はいらない
   @post = Post.find(params[:id])
   @post.destroy
   redirect_to "/posts/"
 end

  private
  def post_params
    #params.require(:key).permit(:filter)
    #どこまで読み込んでいいかを設定している。
    params.require(:post).permit(
      :title,
      :body,
      :category_id
      )
  end

  def set_post
   @post = Post.find(params[:id])
  end
end
