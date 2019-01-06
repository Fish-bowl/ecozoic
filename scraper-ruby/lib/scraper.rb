require "HTTParty"
require "Nokogiri"

class Scraper 
  attr_accessor :parse_page

  def initialize
    doc = "https://www.fbo.gov/?s=opportunity&mode=list&tab=search"
    @parse_page ||= Nokogiri::HTML(doc)
    if @parse_page.include? (" 898988 ")
      return "link"
  end

  name = parse_page.css("scrollable-checkbox div").
end
