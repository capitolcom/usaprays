namespace :facebook do
  desc "TODO"
  task :post => :environment do

    date = Date.current
    config = File.join(Rails.root, 'config', 'states.yml')
    states = YAML.load_file config
    states.map do |state, facebook_id|
      st = UsState.new(state)
      @leaders = LeaderSelector.for_day(st, date)
      page_token = facebook.get_page_access_token(facebook_id)
      @page_graph = Koala::Facebook::API.new(page_token)
      post = build_post(@leaders)
      link = "http://www.pray1tim2.org/states/#{state}"
      picture = ENV["FACEBOOK_PICTURE"]
      description = "You are invited to join us as we pray daily for these elected officals. Pray1Tim2 is a ministry of Capitol Commission."
      @page_graph.put_wall_post(post, link: link, picture: picture, description: description)
    end
  end

  def build_post(leaders)
    text = "Pray today for #{daily_text} for:\n"
    leaders.each do |leader|
      text << "#{leader["title"]} #{leader["name"]}\n"
    end
    return text
  end

  def token
    ENV["FACEBOOK_TOKEN"]
  end

  def facebook
    Koala::Facebook::API.new(token)
  end

  def daily_text
    Pray.new(Date.current + 1).text
  end
end
