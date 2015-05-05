task :default => :sinatra

desc "Run the server via Sinatra (1)"
task :sinatra do
	sh "ruby app.rb"
end

desc "Run the server via Sinatra (2)"
task :s do
	sh "ruby app.rb"
end

desc "Run the server via rackup"
task :r do
	sh "rackup"
end

desc "Open apps in OpenShift"
task :openshift do
	sh "gnome-open https://openshift.redhat.com/app/console/applications &"
end

desc "Open apps in Heroku"
task :heroku do
	sh "gnome-open https://dashboard.heroku.com/apps &"
end