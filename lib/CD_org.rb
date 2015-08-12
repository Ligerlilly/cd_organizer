class CD_ORG

  attr_reader :cds
  @@cd_org_array = []

  def initialize
    @cds = []
  end

  def add(cd_name)
    @cds.push(cd_name)
  end

  def save
    @@cd_org_array.push(self)
  end

  def self.retrieve
    @@cd_org_array
  end

  def self.clear
    @@cd_org_array = []
  end



end
