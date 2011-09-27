require "spec_helper"

describe RXte::Base do
  let(:rxte) { RXte::Base.new }

  [:key, :keydown, :keyup, :str, :mouseclick, :mousedown, :mouseup, :sleep, :usleep].each do |method|
    describe "##{method}" do

      it "should add #{method} command" do
        rxte.send method, "d"
        rxte.commands.should == "'#{method} d'"
      end

      it "should return self" do
        rxte.send(method, "d").should == rxte
      end

    end
  end

  [:mousemove, :mousermove].each do |method|
    describe "##{method}" do

      it "should add #{method} command" do
        rxte.send method, 100, 225
        rxte.commands.should == "'#{method} 100 225'"
      end

      it "should return self" do
        rxte.send(method, 100, 225).should == rxte
      end

    end
  end

  describe "#commands" do
    it "should return string containing all commands separated by space" do
      rxte.key("F")
      rxte.str("xyz")
      rxte.keydown("1")
      rxte.commands.should == "'key F' 'str xyz' 'keydown 1'"
    end
  end
end
