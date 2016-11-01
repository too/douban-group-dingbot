#!/usr/bin/env ruby

def main
  doctor_urls = [{:url => "https://www.douban.com/group/topic/92555668/",
                  :frequency => 20,
                  :tag => "beijing"},
                 {:url => "https://www.douban.com/group/topic/92556693/",
                  :frequency => 5,
                  :tag => "beijing"},
                 {:url => "https://www.douban.com/group/topic/92556868/",
                  :frequency => 1,
                  :tag => "internet"},
                 {:url => "https://www.douban.com/group/topic/92557047/",
                  :frequency => 2,
                  :tag => "campus"},
                 {:url => "https://www.douban.com/group/topic/92557159/",
                  :frequency => 1,
                  :tag => "shanghai-internship"},
                 {:url => "https://www.douban.com/group/topic/92557288/",
                  :frequency => 15,
                  :tag => "shenzhen"},
                 {:url => "https://www.douban.com/group/topic/92557393/",
                  :frequency => 1,
                  :tag => "internet"},
                 {:url => "https://www.douban.com/group/topic/92557523/",
                  :frequency => 18,
                  :tag => "shanghai"},
                 {:url => "https://www.douban.com/group/topic/92558006/",
                  :frequency => 2,
                  :tag => "design"},
                 {:url => "https://www.douban.com/group/topic/92561303/",
                  :frequency => 2,
                  :tag => "foreign-company"},
                 {:url => "https://www.douban.com/group/topic/92561439/",
                  :frequency => 1,
                  :tag => "foreign-company2"},
                 {:url => "https://www.douban.com/group/topic/92561628/",
                  :frequency => 1,
                  :tag => "english-resume"},
                 {:url => "https://www.douban.com/group/topic/92561816/",
                  :frequency => 4,
                  :tag => "campus-student"},
                 {:url => "https://www.douban.com/group/topic/92561998/",
                  :frequency => 4,
                  :tag => "shenzhen"},
                 {:url => "https://www.douban.com/group/topic/92562193/",
                  :frequency => 10,
                  :tag => "guangzhou"},
                 {:url => "https://www.douban.com/group/topic/92562698/",
                  :frequency => 2,
                  :tag => "chengdu"},
                 {:url => "https://www.douban.com/group/topic/92563085/",
                  :frequency => 2,
                  :tag => "abroad"},
                 {:url => "https://www.douban.com/group/topic/92563181/",
                  :frequency => 5,
                  :tag => 'usa'},
                 {:url => "https://www.douban.com/group/topic/92563447/",
                  :frequency => 4,
                  :tag => "british"},
                 {:url => "https://www.douban.com/group/topic/92563604/",
                  :frequency => 3,
                  :tag => "austrilia"},
                 {:url => "https://www.douban.com/group/topic/92563776/",
                  :frequency => 2,
                  :tag => "tofel"},
                 {:url => "https://www.douban.com/group/topic/92563855/",
                  :frequency => 2,
                  :tag => "abroad"},
                 {:url => "https://www.douban.com/group/topic/92564015/",
                  :frequency => 1,
                  :tag => "austrilia"},
                 {:url => "https://www.douban.com/group/topic/92564169/",
                  :frequency => 2,
                  :tag => "europe"},
                 {:url => "https://www.douban.com/group/topic/92564362/",
                  :frequency => 2,
                  :tag => "abroad"},
                 {:url => "https://www.douban.com/group/topic/92564555/",
                  :frequency => 2,
                  :tag => "canada"}]

  urls = doctor_urls.map { |url| [url[:url]] * url[:frequency] }.flatten


  3.times do
    sleep_seconds = rand(1500)
    rand_url = urls[rand(urls.length)]
    puts "Sleep #{sleep_seconds} for a while."
    sleep(sleep_seconds)

    case RUBY_PLATFORM
    when /darwin/
      `open #{rand_url}`
    when /linux/
      `xdg-open #{rand_url}`
    end
  end
end

if __FILE__ == $0
  main
end
