require 'rspec'
require './lib/CD_org'

describe CD_ORG do
  before do
    CD_ORG.clear
    @org = CD_ORG.new
  end
  describe "#cds" do
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

  describe "#save" do
    it 'adds an instance of cd_org to the class array of CD_ORG' do
      @org.save
      expect(CD_ORG.retrieve).to eq [@org]
    end
  end

  describe '.clear' do
    it 'empties class array' do
      @org.save
      CD_ORG.clear
      expect(CD_ORG.retrieve).to eq []
    end
  end

end
