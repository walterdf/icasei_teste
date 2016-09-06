class RegistrationlogController < ApplicationController
	def create
		log = Logacesso.new
		log.guid = params[:guid]
		log.url = params[:url]
		log.date = DateTime.now

		log.save!

	end
end