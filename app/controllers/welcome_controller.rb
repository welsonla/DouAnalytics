require 'nokogiri' 
require 'open-uri'

class WelcomeController < ApplicationController
  
  
  def index
    
    
    doc = Nokogiri::HTML(open('http://movie.douban.com/tag/'))

    # doc.css('.tagCol tbody tr td').each do |link|
    #   puts link.content
    # end

    @links =  doc.search('.tagCol').first.css('tbody > tr > td')

    @links.each do |tag_link|
      
    end
    # doc.search('h3.r a.l', '//h3/a').each do |link|
    #   puts link.content
    # end
  end
  
end
