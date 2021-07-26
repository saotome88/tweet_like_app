class LikesController < ApplicationController
  def create
    @like = current_user.likes.crete(post_id: params[:post_id])
    #直前のぺージにリダイレクトする。いいねを押したら、トップページをリダイレクトして反映させている
    redirect_back(fallback_location: root_path)
  end

  def destroy
    # findメソッドはidを引数に取る。find_byメソッドは属性を取り、複数条件を指定できる。
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    #直前のぺージにリダイレクトする。いいねを消したら、トップページをリダイレクトして反映させている
    redirect_back(fallback_location: root_path)

end
