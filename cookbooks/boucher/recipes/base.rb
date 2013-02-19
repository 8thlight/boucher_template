require 'boucher/env'

execute "apt-get-update-periodic" do
  command "apt-get update"
  ignore_failure true
  only_if do
    File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
    File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 86400
  end
end

cron "sync-time" do
  user "root"
  command "ntpdate ntp.ubuntu.com"
  minute "0"
  hour "0"
end

package "ruby1.9.1"
package "ruby1.9.1-dev"
package "git"
package "gcc"
package "make"
package "libxml2-dev"
package "libxslt1-dev"

git "/home/#{Boucher::Config[:username]}/infrastructure" do
  repository Boucher::Config[:infrastructure_git_repo]
  reference "master"
  user Boucher::Config[:username]
  action :sync
end

bash "Update Gem Bundle" do
  user Boucher::Config[:username]
  cwd "/home/#{Boucher::Config[:username]}/infrastructure"
  code "bundle"
end
