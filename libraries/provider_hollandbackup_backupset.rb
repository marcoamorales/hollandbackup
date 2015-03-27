require 'chef/provider/lwrp_base'

class Chef
  class Provider
    class HollandbackupBackupset < Chef::Provider::LWRPBase
      use_inline_resources if defined?(use_inline_resources)

      action :configure do
        template 'backupset ' + new_resource.name do
          cookbook new_resource.cookbook
          path new_resource.path
          source new_resource.source
          owner new_resource.owner
          group new_resource.group
          mode new_resource.mode
          variables(
            :resource => new_resource
          )
        end
      end
    end
  end
end
