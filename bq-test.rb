require 'bigquery'

opts = {}
  opts['client_id']     = '61802936414.apps.googleusercontent.com'
  opts['service_email'] = '61802936414@developer.gserviceaccount.com'
  opts['key']           = '09456572d641a8d6fc7a60a153608ec9493a801e-privatekey.p12'
  opts['project_id']    = 'cs-challenge-1858'
  opts['dataset']       = 'superheroes'

bq = BigQuery.new(opts)
data = bq.tables

puts data