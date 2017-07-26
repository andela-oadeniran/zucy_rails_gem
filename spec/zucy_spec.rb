require 'spec_helper'

1
RSpec.describe 'Todolist' do
  include Rack::Test::Methods

  def app
    Todolist::Application.new
  end

  it'returns a list of all the todos' do
    get '/todolist'
    expect(last_response).to be_ok
    expect(last_response.body).to eq ("['Write a book', 'Build a house', 'Get married', 'Buy a car']")
  end

  it'returns first item in my todo list' do
    get '/todolist/first'
    expect(last_response).to be_ok
    expect(last_response.body).to eq ('Write a book')
  end

  it'can respond to post request' do
    post '/todolist'
    expect(last_response).to be_ok
    expect(last_response.body).to eq ('Post go swimming')
  end

  it'can respond to a put request' do
    put '/todolist'
    expect(last_response).to be_ok
    expect(last_response.body).to eq ('Put Write a book')
  end

  it'can respond to a delete request' do
    delete '/todolist'
    expect(last_response).to be_ok
    expect(last_response.body).to eq ('delete a book')
  end
end

RSpec.describe Zucy do
  it "has a version number" do
    expect(Zucy::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
