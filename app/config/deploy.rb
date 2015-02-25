# deploy.rb

set   :application,   "Formation"
set   :user, "ubuntu"
set   :deploy_to,     "/var/www/formation.com"
set   :domain,        "ubuntu@62.4.23.203"

set   :scm,           :git
# set   :repository,    "git@github.com:kempsd/Formation.git"
set   :repository,    "file:///var/www/formation"
set   :deploy_via,    :copy

role  :web,           domain
role  :app,           domain, :primary => true

set   :use_sudo,      false
set   :keep_releases, 3

set :shared_files,      ["app/config/parameters.yml"]
set :shared_children,     [app_path + "/logs", web_path + "/uploads", "vendor"]
set :use_composer, true
set :update_vendors, true