require "json"

class App < Padrino::Application

  register Padrino::Helpers

  RESULT_OK = {
    :result => "OK",
  }.to_json

  get "/some/api" do
    RESULT_OK
  end

  get "/some/api/with/custom/header" do
    headers "X-Hello" => "WORLD"
    RESULT_OK
  end

end
