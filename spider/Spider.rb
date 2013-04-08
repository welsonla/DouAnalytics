require 'sqlite3'
require 'nokogiri'
require 'net/http'
require 'uri'
require 'cgi'


class Spider
  

  def initialize
    p "init"
    dbOpen
    getAllTags
  end



  #打开数据库连接
  def dbOpen
    @db = SQLite3::Database.new("development.sqlite3")
    @db.results_as_hash = true
    
    p "db open success!"
  end



  #获取所有tag及其URL
  def getAllTags
    
    p "Start read all tags from db ...."
    
    rows  = @db.execute("select * from tags")
    
    
    rows.each do |row|
      puts "Name:#{row['name']}------------URL:#{row['url']}--------------Count:#{row['count']}"
      
      
      # while(page*20<row['count'])
        url = openURL(row['url'],0,row['count'])
        getHtml(url)
      # end
      
      
    end
    
    @db.close
  end
  



#获取需要抓取的页面的URL
def openURL(url,page,count)
  startNum = page*20<count ? page*20 : -1

  if startNum!=-1
    url = "#{url}?start=#{startNum}&type=T"
  else
    url = nil
  end
  return url
end

#打开页面并输出页面内容
def getHtml(url)
  if url==nil
    p "error url links"
  else
    p "Opening the webpage :#{url}"
    
    uri = URI::parse(URI.encode("#{url}").strip)
    res = Net::HTTP.get_response(uri)
    
    p res.code
    
    # page = Nokogiri::HTML(open(url))
   #  puts page.class
  end
end



end