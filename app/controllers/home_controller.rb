class HomeController < ApplicationController
  def index


  end
  def result
    # Parameter: {"title}=>"~~", "content"=>"~~"}
    @title_output = params[:title]
    @title_content = params[:content]
  end
end
