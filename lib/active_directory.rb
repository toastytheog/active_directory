#-- license
#
#  Based on original code by Justin Mecham and James Hunt
#  at http://rubyforge.org/projects/activedirectory
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#++ license

require 'net/ldap'

require 'active_directory/base.rb'
require 'active_directory/container.rb'
require 'active_directory/member.rb'

require 'active_directory/user.rb'
require 'active_directory/group.rb'
require 'active_directory/computer.rb'

require 'active_directory/field_type/password.rb'
require 'active_directory/field_type/binary.rb'
require 'active_directory/field_type/date.rb'
require 'active_directory/field_type/timestamp.rb'

module ActiveDirectory
  
  #Special Fields
  def self.special_fields
    @@special_fields
  end

  def self.special_fields= sp_fields
    @@special_fields = sp_fields
  end

  @@special_fields = {

    #All objects in the AD
    # :Base => {
    #   :objectguid => :binary,
    #   :whencreated => :date,
    #   :whenchanged => :date
    # },

    #User objects
    :User => {
      :objectguid => :binary,
      :whencreated => :date,
      :whenchanged => :date,
      :objectsid => :binary,
      :msexchmailboxguid => :binary,
      :msexchmailboxsecuritydescriptor => :binary,
      :lastlogontimestamp => :timestamp,
      :pwdlastset => :timestamp,
      :accountexpires => :timestamp
    },

    #Group objects
    :Group => {
      :objectguid => :binary,
      :whencreated => :date,
      :whenchanged => :date,
      :objectsid => :binary,
    },
  }
end
