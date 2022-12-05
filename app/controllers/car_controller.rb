class CarController < ApplicationController
  def index

    response = HTTParty.get("https://api.publicapis.org/categories")
    # console
    @response = JSON.parse(response.body)
    @categories = @response["categories"]

    # @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/tags").body)
    @cat_facts = JSON.parse(HTTParty.get("https://cataas.com/api/cats?tags=tag1,tag2&skip=0&limit=10").body)
    # console

  end
end
