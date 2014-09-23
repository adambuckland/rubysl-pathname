require 'pathname'

class RootPath
  def to_str
    '/'
  end
end

class RootPath2
  def to_path
    '/'
  end
end

describe "Pathname.new" do
  it "returns a new Pathname Object which uses to_str impl of the param" do
    Pathname.new(RootPath.new).should == Pathname.new('/')
  end

  it "returns a new Pathname Object which uses to_path impl of the param" do
    Pathname.new(RootPath2.new).should == Pathname.new('/')
  end
end

