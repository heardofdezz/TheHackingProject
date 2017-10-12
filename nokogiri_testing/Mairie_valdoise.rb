
require 'rubygems'
require 'nokogiri'
require 'open-uri'

=begin
#def get_the_email_of_a_town_hall_from_its_webpage
	
	url_mairie_vaureal = "http://annuaire-des-mairies.com/95/vaureal.html"
	
	mairie_vaureal = Nokogiri::HTML(open(url_mairie))
	mairie_vaureal.css('p:contains("@")').each do |email|
		print email.text
	end
#end
=end


# def get_all_urls_of_val_doise_townhalls
	
	url_mairie_val_doise = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

	#url_mairie_val_doise.css('a:contains(lientxt)').each do |url|
		
		#resul = "http://annuaire-des-mairies.com" + url
		#puts resul
		#puts url
	#end

	url_mairie_val_doise.css('a:contains(href)').each do |href|
		puts href
	end
#end

