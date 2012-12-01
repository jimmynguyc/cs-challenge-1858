require 'bundler'
require 'sinatra'
require "sinatra/reloader" if development?
require 'bigquery'
require 'pp'

get '/' do
  erb :'index.html'
end



get '/data.json' do
  opts = {}
  opts['client_id']     = '61802936414.apps.googleusercontent.com'
  opts['service_email'] = '61802936414@developer.gserviceaccount.com'
  opts['key']           = '09456572d641a8d6fc7a60a153608ec9493a801e-privatekey.p12'
  opts['project_id']    = '61802936414'
  opts['dataset']       = 'yourdataset'

  bq = BigQuery.new(opts)
  
  q = {}
  if params['action'] == 'all'
    q = bq.query("SELECT name FROM [superheroes.data]")['rows']
  end

  q.to_json

end