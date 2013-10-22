class Writing < ActiveRecord::Base
  attr_accessible :name, :summary, :url, :publishedat, :guid
  def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :publishedat  => entry.published,
          :guid         => entry.id
        )
      end
    end
  end
end
