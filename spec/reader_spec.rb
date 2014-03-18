require 'json'
require 'reader'

describe Reader do
  
  it "reads payload" do
    json = JSON.parse(File.read("payload_example.json"))
    Reader.read_payload json
  end
end