# Add all subdirectories to $LOAD_PATH the hipster way
Dir.glob("**/*").select {|f| File.directory? f}.each do |relative_path|
  $: << File.expand_path("../#{relative_path}", __FILE__)
end

require "rack/contrib"
require "api"

run Rack::Cascade.new([Rack::File.new("public"), API::Root])