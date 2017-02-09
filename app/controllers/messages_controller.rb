class MessagesController < ApplicationController
  def index
    @aaa = Message.new
    @messages=Message.all
  end
  
  def create
    @aaa=Message.new(message_params)
    @aaa.save
    redirect_to root_path , notice:"メッセージを保存しました"
  # raise params.inspect
  end
  
  private
  def message_params
    params.require(:aaa).permit(:name,:body)
  end
end
