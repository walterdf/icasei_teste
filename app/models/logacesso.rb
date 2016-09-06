class Logacesso
	include Mongoid::Document
	field :guid, type: String
	field :url, type: String
	field :date, type: DateTime

	validates_presence_of :date
	validates_presence_of :url
	validates_presence_of :guid

	def self.getLastLog(total)
		Logacesso.desc(:date).limit(total)
	end
end