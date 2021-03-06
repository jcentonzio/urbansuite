require 'bundler/capistrano'

set :application, 'urbansuite.cl'
set :domain, 'urbansuite.test'
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

  task :symbolic_links do
    run "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
   
end

after :deploy, 'deploy:symbolic_links'
