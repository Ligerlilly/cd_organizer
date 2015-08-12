require 'rspec'
require './lib/CD_org'

describe CD_ORG do
  before do
    @org = CD_ORG.new
  end
  describe "#initialize" do
    it 'creates an instance of CD_ORG' do
      expect(@org.cds).to eq []
    end
  end
  describe "#add" do
    it 'adds a cd to CD_ORG' do
      @org.add("Dookie")
      #includes_dookie = @org.cds.include?('Dookie')
      expect(@org.cds).to eq ["Dookie"]
    end
  end
end
