require 'rubygems'
require 'puppetlabs_spec_helper/module_spec_helper'

# What is the config arrangement that allows all apache .pp files
# and all bb_credentials .pp files to be loaded?
# I either get errors about "apache" not being found, or about "bb_credentials" not being found
# Or "Unknown function: 'is_string'", which means the stdlib was not loaded.

#puppet_path = File.expand_path(File.join(__FILE__, '..', '..', '..', '..'))

#puts 'PUPPET_PATH = ' + puppet_path.to_s

#RSpec.configure do |config|
#  config.confdir      = puppet_path
#  config.module_path  = File.join(puppet_path, 'modules')
#  config.manifest_dir = File.join(puppet_path, 'manifests')
#end
