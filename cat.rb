require 'yaml'
require 'digest'
require_relative 'internal'
require_relative 'rpg'

# Marshal.load( File.open( 'Map106.rxdata', "r+" ) )

data = YAML::unsafe_load( File.open( 'Map106.yaml', "r+" ) )

Marshal.dump( data['root'], File.open( 'Map106.dump', "w+" ) )

puts Digest::SHA256.file( 'Map106.dump' ).hexdigest
