#after any changes to the Gemfile, execute bundle update!
source "https://rubygems.org"
gemspec

# Delete the following lines if not on Windows: 
# Performance-booster for watching directories on Windows
gem "wdm", ">= 0.1.0" if Gem.win_platform?

gem "jekyll-remote-theme"

#require 'rbconfig'
if RbConfig::CONFIG['target_os'] =~ /(?i-mx:bsd|dragonfly)/
   gem 'rb-kqueue', '>= 0.2'
end

gem 'webrick'
