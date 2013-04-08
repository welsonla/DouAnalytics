require 'nokogiri' 
require 'open-uri'

class WelcomeController < ApplicationController
  
  
  def index
    @tags = Tags.all
  end

    
  #   doc = Nokogiri::HTML(open('http://movie.douban.com/tag/'))

  #   # doc.css('.tagCol tbody tr td').each do |link|
  #   #   puts link.content
  #   # end

  #   @links =  doc.search('.tagCol').first.css('tbody > tr > td')

    
  #   @links.each do |tag_link|
  #     # tags = Tags.new
      
  #     # p tag_link
  #     # p tag_link.content
  #     url  =  tag_link.search('a').attr('href').value.gsub(/\./,'http://movie.douban.com/tag')
  #     count =  tag_link.search('b').children.text.to_s.gsub(/[\(\)]/,'')
  #     name  =  tag_link.search('a').inner_html.to_s

  #     p "#{url}-----#{count}-----#{name}"


  #     tag = Tags.new
  #     tag.name = name
  #     tag.url  = url
  #     tag.count= count
  #     # tag.cat  = "种类"
  #     tag.save
  #   end
  #   # doc.search('h3.r a.l', '//h3/a').each do |link|
  #   #   puts link.content
  #   # end
  # end


    #In View
#    <% @links.each do |link|%>
#
#<%= link %>
#
#    <span class="btn">
#        <a href="http://movie.douban.com/tag/<%=link['href']%>">
#    <%= link.content %>
#</a>
#</span><br/>

  
end
