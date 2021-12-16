# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

set :application, "yourdailyreset"
set :repo_url, "git@bitbucket.org:kalebrdubai/yourdailyreset.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/#{fetch :application}"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads', 'tmp/images'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

# Sidekiq Config
set :sidekiq_config, -> { File.join(shared_path, "config", 'sidekiq.yml') }
set :sidekiq_log, -> { File.join(shared_path, 'log', 'sidekiq.log') }
set :sidekiq_env, -> { fetch(:rack_env, fetch(:rails_env, fetch(:stage))) }

set :passenger_restart_with_touch, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'

  namespace :check do
    before :linked_files, :set_master_key_and_credentials do
      on roles(:app), in: :sequence, wait: 10 do

        # unless test("[ -f #{shared_path}/config/master.key ]")
        #   upload! 'config/master.key', "#{shared_path}/config/master.key"
        # end

        upload! 'config/credentials.yml.enc', "#{shared_path}/config/credentials.yml.enc"
        upload! 'config/sidekiq.yml', "#{shared_path}/config/sidekiq.yml"

        # unless test("[ -f #{shared_path}/config/credentials.yml.enc ]")
        #   upload! 'config/credentials.yml.enc', "#{shared_path}/config/credentials.yml.enc"
        # end
        # unless test("[ -f #{shared_path}/config/sidekiq.yml ]")
        #   upload! 'config/sidekiq.yml', "#{shared_path}/config/sidekiq.yml"
        # end
      end
    end
  end

end