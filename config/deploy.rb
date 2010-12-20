require 'bundler/capistrano'

set :application, 'urbansuite.cl'
set :domain, '200.29.30.109'
set :user, 'goseo'
set :deploy_to, "/home/goseo/public_html/#{application}"
set :use_sudo, false
set :branch, 'master'

set :repository,  "git@github.com:jcentonzio/urbansuite.git"

set :scm, :git

role :web, domain
role :app, domain
role :db,  domain

namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "touch #{File.join(current_path,'tmp','restart.txt')}"
   end
end
