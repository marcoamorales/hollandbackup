require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class HollandbackupInstall < Chef::Resource::LWRPBase
      self.resource_name = :hollandbackup_install
      actions :create, :delete
      default_action :create

      attribute :repo_name, :kind_of => String, :default => nil
      attribute :package_version, :kind_of => String, :default => nil
      attribute :package_name, :kind_of => String, :default => nil
      attribute :repo_url, :kind_of => String, :default => nil
      attribute :gpg_key_url, :kind_of => String, :default => nil
      attribute :additional_packages, :kind_of => Array, :default => []
      attribute :package_manager_flags, :kind_of => String, :default => nil
    end
  end
end
