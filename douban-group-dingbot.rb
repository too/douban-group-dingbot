#!/usr/bin/env ruby

def main
  urls = ["https://www.douban.com/group/topic/90845242/",
          "https://www.douban.com/group/topic/90845094/",
          "https://www.douban.com/group/topic/90845036/",
          "https://www.douban.com/group/topic/90844973/",
          "https://www.douban.com/group/topic/90844873/",
          "https://www.douban.com/group/topic/90844341/",
          "https://www.douban.com/group/topic/90844012/",
          "https://www.douban.com/group/topic/90841110/",
          "https://www.douban.com/group/topic/90840593/",
          "https://www.douban.com/group/topic/90840457/",
          "https://www.douban.com/group/topic/90840401/",
          "https://www.douban.com/group/topic/90840340/",
          "https://www.douban.com/group/topic/90840228/",
          "https://www.douban.com/group/topic/90840096/",
          "https://www.douban.com/group/topic/90839736/",
          "https://www.douban.com/group/topic/90839654/",
          "https://www.douban.com/group/topic/90839557/"];

  rand_url = urls[rand(urls.length)]

  sleep_seconds = rand(1000)
  puts "Sleep #{sleep_seconds} for a while."
  sleep(sleep_seconds)

  case RUBY_PLATFORM
  when /darwin/
    `open #{rand_url}`
  when /linux/
    `xdg-open #{rand_url}`
  end
end

if __FILE__ == $0
  main
end
