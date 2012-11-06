require 'rubygems'
require 'boucher/env'

ROOT_DIR = File.expand_path(File.join(File.dirname(__FILE__), ".."))

put "Chef configured with #{Boucher::Config[:env]} environment."

cookbook_path File.join(ROOT_DIR, "cookbooks")

