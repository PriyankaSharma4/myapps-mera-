class ParallelController < ApplicationController

  def parallelrate
  	require 'open-uri'

    require 'openssl'
    doc = Nokogiri::HTML(open('https://www.abokifx.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('.lagos-market-rates-inner')
    rate = entries.css('table')[0].css('tr')[1].css('td')[1].text
    @formattedrate = rate[6..8]

    binding.pry
    render template: 'parallel/home'
  end

end