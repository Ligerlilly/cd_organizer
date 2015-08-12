class CD_ORG

  attr_reader :cds

  def initialize
    @cds = []
  end

  def add(cd_name)
    @cds.push(cd_name)
  end
  


end
