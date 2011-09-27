require "rubygems"

RXTE_ROOT = File.join(File.dirname(__FILE__), '../')

Dir[File.join(RXTE_ROOT, "lib/**/*.rb")].each {|f| require f}
