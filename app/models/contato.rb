class Contato
	include Mongoid::Document
	field :nome, type: String
	field :email, type: String
	field :mensagem, type: String

	validates_presence_of :email
	validates_uniqueness_of :email
end