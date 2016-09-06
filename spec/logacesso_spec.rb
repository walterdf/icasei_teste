require 'rails_helper'

describe 'modelo logacesso' do
  before :each do
    
  end

  context "quando quero salvar" do
    it "e quando retorna sucesso" do
      log = Logacesso.new
      log.guid = "idw7f5ses3gr"
      log.url = "home"
      log.date = DateTime.now
      expect(log.save).to eq(true)
    end

    it "e quando tento salvar sem data" do
      log = Logacesso.new
      log.guid = "idw7f5ses3gr"
      log.url = "home"
      expect(log.save).to eq(false)
    end
  end
end