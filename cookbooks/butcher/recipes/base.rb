require 'butcher/env'

execute "apt-get-update-periodic" do
  command "apt-get update"
  ignore_failure true
  only_if do
    File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
    File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 86400
  end
end

package "ruby1.9.1"
package "ruby1.9.1-dev"
package "git"
package "gcc"
package "make"
package "libxml2-dev"
package "libxslt1-dev"

git "/home/#{Butcher::Config[:username]}/infrastructure" do
  repository Butcher::Config[:infrastructure_git_repo]
  reference "master"
  user Butcher::Config[:username]
  action :sync
end

bash "Update Gem Bundle" do
  user Butcher::Config[:username]
  cwd "/home/#{Butcher::Config[:username]}/infrastructure"
  code "bundle"
end
