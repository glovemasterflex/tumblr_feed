class PostsController < ApplicationController
  
  def index
    @posts = client.posts(ENV['HOSTNAME'])['posts']
  end

  private
    def client
      @client ||= Tumblr::Client.new(client: :httpclient)
    end
end
