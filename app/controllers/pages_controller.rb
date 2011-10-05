class PagesController < ApplicationController
  def home
  end

  def noauth
    @graph = Koala::Facebook::API.new
    #puts @graph.get_object("matthewliu")
    @name = @graph.get_object("matthewliu")
  end

  def fakeauth
    @graph = Koala::Facebook::API.new("AAACEdEose0cBANcPSQICEVaXgWf0xIWkc4RZAViTgKszOZABpp3ECuFrKMSyX0HUSF2vgpiZB21oBRtzWBXL9MOZBjipZBkObbLL65xv0kgZDZD")
    @likes = @graph.get_connections("matthewliu", "likes")
  end

  def realauth
    @oauth = Koala::Facebook::OAuth.new('278272958863760', '5a614013838d3a0543de6b30a4b62b35', 'http://localhost:3000/pages/realauth')
    @oauth.get_user_info_from_cookies(cookies)
    @photos = @graph.get_connections("matthewliu", "photos")
  end

end

