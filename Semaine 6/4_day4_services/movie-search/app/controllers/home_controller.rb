class HomeController < ApplicationController
  def index
  end

  def search
      if !(params[:search].blank?)
          @results = MovieSearch.new(params[:search])
          #@params[:results] = 
          @movies=@results.search
      else
        flash.now[:danger]="Please precise your research, not blank input accepted"
      end
  end
end
