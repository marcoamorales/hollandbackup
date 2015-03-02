require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class HollandBackupInstall < Chef::Resource::LWRPBase
      self.resource_name = :hollandbackup_install
      actions :create, :delete
      default_action :create

      attribute :repo_name, kind_of: String, default: nil
    end
  end
end
