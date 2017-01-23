require 'sinatra'
require "sinatra/reloader"
require 'time'
require 'prime'


get '/' do
  @animals = %w(ゾウ ゴリラ キリン ライオン ヒョウ パンダ)
  erb :index
end

get '/primes' do
  @primes = Prime.take(1000)
  erb :prime
end

get '/my-name-is/:name' do
  name = params[:name]
  "私の名前は#{name}です"
end

get '/hoge' do
  'hoge hoge'
end
