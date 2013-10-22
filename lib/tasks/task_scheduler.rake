task :blog_pull => :environment do
  Writing.update_from_feed('http://www.goodreads.com/author/show/6507631.Dominic_H_King/blog?format=rss')
end