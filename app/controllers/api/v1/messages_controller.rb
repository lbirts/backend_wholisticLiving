class Api::V1::MessagesController < ApplicationController
  before_action :set_message, only: [:show, :update, :destroy]

  # GET /messages
  def index
    @messages = Message.all

    render json: @messages
  end

  # GET /messages/1
  def show
    render json: @message
  end

  # POST /messages
  def create
    @message = Message.new(message_params)
    chatroom = Chatroom.find(message_params["chatroom_id"])
    provider = Provider.find(chatroom.provider.id)
    client = Client.find(chatroom.client.id)
    if @message.save
      ChatroomChannel.broadcast_to(chatroom, {
        chatroom: ChatroomSerializer.new(chatroom),
        provider: ProviderSerializer.new(provider),
        client: ClientSerializer.new(client),
        message: MessageSerializer.new(@message)
      })
      render json: {message: MessageSerializer.new(@message)}, status: :created
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/1
  def update
    if @message.update(message_params)
      render json: @message
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/1
  def destroy
    @message.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:content, :user_id, :chatroom_id)
    end
end
