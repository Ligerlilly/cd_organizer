require 'rspec'
require './lib/CD_org'

describe CD_ORG do
  describe "#initialize" do
    it 'creates an instance of CD_org' do
      @org = CD_ORG.new
      expect(@org.cds).to eq []
    end
  end
end
