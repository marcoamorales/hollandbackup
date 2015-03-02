require 'chef/provider/lwrp_base'
require_relative 'helpers'

class Chef
  class Provider
    class HollandBackupInstall < Chef::Provider::LWRPBase
      include HollandBackupCookbook::Helpers

      use_inline_resources if defined?(use_inline_resources)

      action :create do
        # Create things
      end

      action :delete do
        # Delete things
      end
    end
  end
end
