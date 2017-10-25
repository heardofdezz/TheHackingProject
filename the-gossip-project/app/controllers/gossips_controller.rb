class GossipsController < ApplicationController
  def index
  end
  def new
    @gossip = Gossip.new
  end
  def edit
  @gossip = Gossip.find(params[:id])
  end
  def create
    @gossip = Gossip.new(gossip_params)
    if @gossip.save
      redirect_to @gossip
    else
      render 'new'
    end
  end

def update
  @gossip = Gossip.find(params[:id])

  if @gossip.update(article_params)
    redirect_to @gossip
  else
    render 'edit'
  end
end
  def show
    @gossip = Gossip.find(params[:id])
  end
  private
    def gossip_params
      params.permit(:anonymous_author, :content)
    end
end
