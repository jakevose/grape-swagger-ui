require "grape"
require "grape-swagger"
require "rack/contrib"

module API
  class Hello < Grape::API
    get "hello" do
      { hello: "world!" }
    end
  end

  class Root < Grape::API
    use Rack::JSONP
    format :json

    before do
        header["Access-Control-Allow-Origin"] = "*"
        header["Access-Control-Request-Method"] = "*"
    end

    mount API::Hello

    add_swagger_documentation(
      hide_documentation_path: true
    )
  end
end