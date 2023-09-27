class ArticlesController < ApplicationController

  def index
    @data = { message: "This is a custom JSON response" }
  end

end
