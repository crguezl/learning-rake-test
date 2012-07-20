
desc "Test with Rack::Test::Methods"
task :test do
  sh "ruby -I. test/tc_hello_world.rb"
end

desc "Test without mixin Rack::Test::Methods"
task :nomixin do
  sh "ruby -I. test/tc_hello_world_without_mixin.rb"
end
