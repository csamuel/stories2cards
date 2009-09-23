require "rubygems"
gem 'soap4r'

Dir[File.dirname(__FILE__) + "/../lib/*.rb"].each do |filename|
  require filename unless filename.eql?(__FILE__)
end

Dir[File.dirname(__FILE__) + "/../lib/xplanner/*.rb"].each do |filename|
  require filename unless filename.eql?(__FILE__)
end