class AbstractData
  attr_accessor :date
  attr_accessor :time
  attr_accessor :html

  def name
    raise "SubclassResponsibility"
  end
end
