# deploy.rb

set   :application,   "Formation"
set   :deploy_to,     "/var/www/formation.com"
set   :domain,        "formation"

set   :scm,           :git
set   :repository,    "git@github.com:kempsd/Formation.git"

role  :web,           domain
role  :app,           domain, :primary => true

set   :use_sudo,      false
set   :keep_releases, 3