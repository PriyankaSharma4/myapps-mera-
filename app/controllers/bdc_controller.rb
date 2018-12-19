class BdcController < ApplicationController
  def bdcrate
  	require 'open-uri'
  	require 'openssl'
    doc = Nokogiri::HTML(open('http://www.bbc.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
	entries = doc.css('#page')
    rate = entries.css('.module')[2]
    # @formattedrate = rate[6..8]
	@formattedrate = rate.text
    render template: 'bdc/home'
  end

	def mecbdcrate
		require 'open-uri'
		require 'openssl'
		agent = Mechanize.new
		data = agent.get('http://www.bbc.com/')
		data.class #=> Mechanize::XmlFile
		# data.search('//div[@attr="home"]/')
		@form =  data.content
		post_page = data.parser.xpath('//div')
		# @form = post_page
		render template: 'bdc/mechome'
	end
end