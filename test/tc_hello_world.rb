require 'hello_world'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class HelloWorldTest < Test::Unit::TestCase
  # The Rack::Test::Methods module includes a variety of helper methods
  # for simulating requests against an application and asserting
  # expectations about the response. It’s typically included directly
  # within the test context and makes a few helper methods and
  # attributes available.
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says_hello_world
    get '/'
    assert last_response.ok?
    assert_equal 'Hello World', last_response.body
  end

  def test_it_says_hello_to_a_person
    get '/', :name => 'Simon'
    assert last_response.body.include?('Simon')
  end
end
