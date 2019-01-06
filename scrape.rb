# require 'pry'
# require 'nokogiri'
# require 'open-uri'

# class Fbo
#   base_uri = 'https://www.fbo.gov/?s=opportunity&mode=list&tab=search'
#   doc = Nokogiri::HTML(open(base_uri))
# end

# puts doc

require 'pry'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://www.fbo.gov/?s=opportunity&mode=list&tab=search"))
the_divs = doc.css("tr.lst-rw lst-rw-first lst-rw-odd")
binding.pry
