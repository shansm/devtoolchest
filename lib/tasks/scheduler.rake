desc 'This task is called by the Heroku cron addon'
task :call_page => :environment do
  uri = URI.parse('http://salty-thicket-7223.herokuapp.com')
  Net::HTTP.get(uri)
end