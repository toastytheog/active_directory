= Active Directory

Ruby Integration with Microsoft's Active Directory system based on original code by Justin Mecham and James Hunt at http://rubyforge.org/projects/activedirectory

See documentation on ActiveDirectory::Base for more information.


A code example is worth a thousand words:

<pre>
require 'rubygems'
require 'active_directory'

# Uses the same settings as net/ldap
settings = {
	:host => 'domain-controller.example.local',
	:base => 'dc=example,dc=local',
	:port => 636,
	:encryption => :simple_tls,
	:auth => {
	  :method => :simple,
	  :username => "username",
	  :password => "password"
	}
}

# Basic usage
ActiveDirectory::Base.setup(settings)

ActiveDirectory::User.find(:all)
ActiveDirectory::User.find(:first, :userprincipalname => "john.smith@domain.com")

ActiveDirectory::Group.find(:all)
</pre>
