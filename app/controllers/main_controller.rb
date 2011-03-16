class MainController < ApplicationController
  def index

  end
  
  def search
    session[:query] = params[:query].strip if params[:query]
    
    if session[:query] and request.xhr?
      @words = Word.find_anagrams(params[:query])
      render :partial => "results", :layout => false, :locals => {:words => @words}
    end
  end
end
