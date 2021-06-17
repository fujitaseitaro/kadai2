class BooksController < ApplicationController
  def index

  end

  def edit

  end

  def show

  end
  def new
     @list = Book.new
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    list = Book.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    list.save
    # ３. トップ画面へリダイレクト
    redirect_to '/index'
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
