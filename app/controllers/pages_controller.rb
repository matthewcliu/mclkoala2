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
    @oauth = Koala::Facebook::OAuth.new('278272958863760', '5a614013838d3a0543de6b30a4b62b35', 'http://bday-reminder.com/pages/realauth')
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    #auth_token = @fb_user[:access_token]
    #@graph = Koala::Facebook::API.new(auth_token)
    #@likes = @fb_user.get_connections("me", "likes")
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

