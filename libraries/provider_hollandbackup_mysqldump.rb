require 'chef/provider/lwrp_base'
require_relative 'helpers'

class Chef
  class Provider
    class HollandbackupMysqldump < Chef::Provider::LWRPBase
      include Chef::DSL::IncludeRecipe

      use_inline_resources if defined?(use_inline_resources)

      action :configure do
        template 'holland.conf' do
          cookbook new_resource.cookbook
          path new_resource.template_path
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
