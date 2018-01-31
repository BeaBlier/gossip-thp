class GossipsController < ApplicationController

  def home
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    redirect_to @gossip
  end



 def show
   @gossip = Gossip.find(params[:id])
 end

 def index
   @gossip = Gossip.all
 end

 def edit
 end

 def update
 end

 def destroy
 end

 private
def gossip_params
  params.require(:gossip).permit(:anonymous_author, :content)
end
end
