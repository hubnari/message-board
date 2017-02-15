class MessagesController < ApplicationController
  
   before_action :set_message, only: [:edit, :update]
  
  def index
    @message = Message.new
    @messages=Message.all
  end
  
  def create
    @message=Message.new(message_params)
    if @message.save
      redirect_to root_path , notice:"メッセージを保存しました"
    else
      @messages=Message.all
      flash.now[:alert]="メッセージの保存に失敗しました"
      #render action: :index
      render 'index'
    end
  # raise params.inspect
  end
  
  def edit
    
  end
  
  def update
    # @message=Message.find(params.id)
    if @message.update(message_params)
      # 保存に成功した場合はトップページへリダイレクト
      redirect_to root_path , notice: "メッセージを更新しました"
    else
      # 保存に失敗した場合は編集画面へ戻す
      render action: :index
    end
  end
  
  def destroy
    @message=Message.find(params[:id])
    @message.destroy
   redirect_to root_path , notice: "メッセージを削除しました"
  end
  
  private
  
  def message_params
    params.require(:message).permit(:name,:body,:age)
  end
  
  def set_message
    @message=Message.find(params[:id])
  end
end
