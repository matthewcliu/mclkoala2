class PagesController < ApplicationController
  
  def home
  end

  def welcome
    @oauth = Koala::Facebook::OAuth.new($app_id, $secret_key)
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
  end

  def likes
    @oauth = Koala::Facebook::OAuth.new($app_id, $secret_key)
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    @graph = Koala::Facebook::API.new(@fb_user['access_token'])
    @likes = @graph.get_connections("me", "likes")
  end

  def friends
    @oauth = Koala::Facebook::OAuth.new($app_id, $secret_key)
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    @graph = Koala::Facebook::API.new(@fb_user['access_token'])
    @friends = @graph.get_connections("me", "friends")
    #@mutual_friends = @graph.get_connections("me", "mutualfriends/#{matthewliu}")
  end
  
  def photos
    @oauth = Koala::Facebook::OAuth.new($app_id, $secret_key)
    @fb_user = @oauth.get_user_info_from_cookies(cookies)
    @fb_user_id = @oauth.get_user_from_cookies(cookies)
    @graph = Koala::Facebook::API.new(@fb_user['access_token'])
    @photos = @graph.get_connections("me", "photos")
  end
  
  def registration
  end
  
  def serverside
  end
  
end

