require 'rails_helper'

describe 'modelo contato' do
  before :each do

    Contato.delete_all
    
  end

  context "quando quero salvar" do

    let(:nome) { "Walter" }
    let(:email) { "walterdf@gmail.com" }

    it "e nao envio o email" do
      contato = Contato.new
      contato.nome = nome
      expect(contato.save).to eq(false)
    end

    it "e envio um email repetido" do
      contato = Contato.new
      contato.nome = nome
      contato.email = email
      contato.save
    
      contato = Contato.new
      contato.nome = nome
      contato.email = email
      expect(contato.save).to eq(false)
    end

    it "e quando retorna sucesso" do
      contato = Contato.new
      contato.nome = nome
      contato.email = email
      expect(contato.save).to eq(true)
    end
  end
end