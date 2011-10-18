class PagesController < ApplicationController
  
  def home
  end

  def noauth
    @graph = Koala::Facebook::API.new
    #puts @graph.get_object("matthewliu")
    @name = @graph.get_object("matthewliu")
  end

  def fakeauth
    @graph = Koala::Facebook::API.new("AAACEdEose0cBAHHC94vJh1qDceUvCoBruMsB0yumV5qJIUjJDGGNE5AMcPQaqCvVy3fb6eOZBoA8VHQmZBjzhOQuZAkWHmAHGZBqO1qFIgZDZD")
    @likes = @graph.get_connections("matthewliu", "likes")
  end

  def realauth
    @oauth = Koala::Facebook::OAuth.new('278272958863760', '5a614013838d3a0543de6b30a4b62b35', 'http://localhost:3000/pages/realauth')
    @oauth.get_user_info_from_cookies(cookies)
    @photos = @graph.get_connections("matthewliu", "photos")
  end
  
  def example
  end
  
  def jquerytest
  end

  def davey
  end

  def davey2
  end

end

