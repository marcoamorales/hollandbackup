require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class Hollandbackup < Chef::Resource::LWRPBase
      self.resource_name = :hollandbackup
      actions :configure, :install, :uninstall
      default_action :install

      # install attributes
      attribute :repo_name, :kind_of => String
      attribute :package_version, :kind_of => String
      attribute :package_name, :kind_of => String
      attribute :repo_url, :kind_of => String
      attribute :gpg_key_url, :kind_of => String
      attribute :additional_packages, :kind_of => Array, :default => []
      attribute :package_manager_flags, :kind_of => String

      # holland.conf template
      attribute :cookbook, :kind_of => String, :default => 'hollandbackup'
      attribute :template_path, :kind_of => String, :default => '/etc/holland/holland.conf'
      attribute :source, :kind_of => String, :default => 'holland.conf.erb'
      attribute :owner, :kind_of => String, :default => 'root'
      attribute :group, :kind_of => String, :default => 'root'
      attribute :mode, :kind_of => String, :default => '0644'

      # holland
      attribute :plugin_dirs, :kind_of => String, :default => '/usr/share/holland/plugins'
      attribute :backup_directory, :kind_of => String, :default => '/var/spool/holland'
      attribute :backupsets, :kind_of => String, :default => 'default'
      attribute :umask, :kind_of => String, :default => '0007'
      attribute :path, :kind_of => String, :default => '/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin'

      # logging
      attribute :filename, :kind_of => String, :default => '/var/log/holland/holland.log'
      attribute :level, :kind_of => String, :default => 'info'
    end
  end
end
