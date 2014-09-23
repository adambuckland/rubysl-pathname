require 'pathname'

describe "Pathname.new" do
  it "returns a new Pathname Object which uses to_str impl of the param" do
    obj = mock("to_str")
    obj.should_receive(:to_str).and_return("/")

    Pathname.new(obj).should == Pathname.new('/')
  end

  it "returns a new Pathname Object which uses to_path impl of the param" do
    obj = mock("to_path")
    obj.should_receive(:to_path).and_return("/")

    Pathname.new(obj).should == Pathname.new('/')
  end
end

