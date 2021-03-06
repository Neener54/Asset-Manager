namespace :monit do
  desc "Install Monit"
  task :install do
    run "#{sudo} apt-get -y install monit"
  end
  after "deploy:install", "monit:install"

  desc "Setup all Monit configuration"
  task :setup do
    monit_config "monitrc", "/etc/monit/monitrc"
    nginx
    postgresql
    unicorn
    syntax
    reload
  end
  after "deploy:setup", "monit:setup"

  desc "only setup nginx"
  task(:nginx, roles: :web) { monit_config "nginx" }
  desc "only setup pgsql"
  task(:postgresql, roles: :db) { monit_config "postgresql" }
  desc "only setup unicorn"
  task(:unicorn, roles: :app) { monit_config "unicorn" }

  %w[start stop restart syntax reload].each do |command|
    task command do
      run "#{sudo} service monit #{command}"
    end
  end
end

def monit_config(name, destination = nil)
  destination ||= "/etc/monit/conf.d/#{name}.conf"
  template "monit/#{name}.erb", "/tmp/monit_#{name}"
  run "#{sudo} mv /tmp/monit_#{name} #{destination}"
  run "#{sudo} chown root #{destination}"
  run "#{sudo} chmod 600 #{destination}"
end