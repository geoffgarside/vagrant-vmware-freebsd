source 'https://rubygems.org'

# Specify your gem's dependencies in vagrant-vmware-freebsd.gemspec
gemspec

group :development do
  # We depend on Vagrant for development, but we don't add it as a
  # gem dependency because we expect to be installed within the
  # Vagrant environment itself using `vagrant plugin`.
  gem "vagrant", :git => "https://github.com/mitchellh/vagrant.git", :tag => "v1.3.2"
end