class BotsController < ApplicationController
  def index
    @bots = Bot.all
  end

  def new
    @bot= Bot.new
  end

  def show
    @bot = Bot.find(params[:id])
  end

  def create
    @bot = Bot.new(bot_params)
    if @bot.save
      redirect_to @bot, notice: 'success'
    else
      render @bot.errors, status: :unprocessable_entity, alert: 'fail'
    end
  end

  private

  def bot_params
    params.require(:bot).permit(:name)
  end
end
