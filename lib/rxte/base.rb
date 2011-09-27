module RXte

  class Base

    def initialize
      @commands = []
    end

    [:key, :keydown, :keyup, :str, :mouseclick, :mousedown, :mouseup, :sleep, :usleep].each do |command_name|
      define_method(command_name) do |arg|
        @commands << command_string(command_name, arg)
        self
      end
    end

    [:mousemove, :mousermove].each do |command_name|
      define_method(command_name) do |x, y|
        @commands << command_string(command_name, x, y)
        self
      end
    end

    def commands
      @commands.join(" ")
    end

    private

    def command_string command_name, *args
      "'#{command_name} #{args.to_a.join(" ")}'"
    end

  end

end
