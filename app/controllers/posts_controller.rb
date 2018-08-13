class PostsController < ApplicationController
  before_action :client
  def index

  end

  def new
    @json = @client.get_users_follows(from_id: current_user.uid).data
    @follows = @json.as_json

    @ids = Array.new

    @follows.each do |channelId|
      id = channelId['to_id'].to_i
      @ids.push(id)
    end

    t = Post.create(follows: @ids, uid: current_user, date: Date.today, item: "twitch")
    t.save!

  end

  def client
    @client = Twitch::Client.new(client_id: "qy77chdevync3a4xyrp1o7xpw922qw")
  end
end
