class PagesController < ApplicationController
  
  def home
  end

  def welcome
    @oauth = Koala::Facebook::OAuth.new('278272958863760', '5a614013838d3a0543de6b30a4b62b35', 'http://bday-reminder.com/pages/realauth')
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    @graph = Koala::Facebook::API.new(@fb_user['access_token'])
    @likes = @graph.get_connections("me", "likes")
  end

  def noauth
    @graph = Koala::Facebook::API.new
    #puts @graph.get_object("matthewliu")
    @name = @graph.get_object("matthewliu")
  end

  def fakeauth
    @graph = Koala::Facebook::API.new("AAAD9FnjdGZAABADiesCVaffYjUqLzFMUegFVJyThS5VCN8FDMHkcOqLoiGtUewZADZCoVuY8n12eGufcPkODayBmubNUJcprhxEStMxagZDZD")
    @likes = @graph.get_connections("matthewliu", "likes")
  end

  def realauth
    @oauth = Koala::Facebook::OAuth.new('278272958863760', '5a614013838d3a0543de6b30a4b62b35', 'http://bday-reminder.com/pages/realauth')
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    @graph = Koala::Facebook::API.new(@fb_user['access_token'])
    @likes = @graph.get_connections("me", "likes")
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

