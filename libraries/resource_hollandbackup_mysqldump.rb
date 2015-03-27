require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class HollandbackupMysqldump < Chef::Resource::LWRPBase
      self.resource_name = :hollandbackup_mysqldump
      actions :configure
      default_action :configure

      # template
      attribute :cookbook, :kind_of => String, :default => 'hollandbackup'
      attribute :template_path, :kind_of => String, :default => '/etc/holland/providers/mysqldump.conf'
      attribute :source, :kind_of => String, :default => 'mysqldump.conf.erb'
      attribute :owner, :kind_of => String, :default => 'root'
      attribute :group, :kind_of => String, :default => 'root'
      attribute :mode, :kind_of => String, :default => '0644'

      # [mysqldump]
      attribute :mysql_binpath, :kind_of => String
      attribute :lock_method, :kind_of => String, :default => 'auto-detect'
      attribute :exclude_invalid_views, :kind_of => String
      attribute :dump_routines, :kind_of => String, :default => 'no'
      attribute :dump_events, :kind_of => String, :default => 'no'
      attribute :stop_slave, :kind_of => String, :default => 'no'
      attribute :bin_log_position, :kind_of => String, :default => 'no'
      attribute :flush_logs, :kind_of => String, :default => 'no'
      attribute :file_per_database, :kind_of => String, :default => 'no'
      attribute :additional_options, :kind_of => String, :default => ''
      attribute :extra_defaults, :kind_of => String
      attribute :estimate_method, :kind_of => String

      # database and table filtering
      attribute :databases, :kind_of => String
      attribute :exclude_databases, :kind_of => String
      attribute :tables, :kind_of => String
      attribute :exclude_tables, :kind_of => String

      # [compression]
      attribute :method, :kind_of => String, :default => 'gzip'
      attribute :inline, :kind_of => String, :default => 'yes'
      attribute :level, :kind_of => Integer, :default => 1
      attribute :bin_path, :kind_of => String

      # [mysql:client]
      attribute :defaults_extra_file, :kind_of => String, :default => '/root/.my.cnf,~/.my.cnf,'
      attribute :user, :kind_of => String
      attribute :password, :kind_of => String
      attribute :socket, :kind_of => String
      attribute :host, :kind_of => String
      attribute :port, :kind_of => String
    end
  end
end
