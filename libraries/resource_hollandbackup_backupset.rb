require 'chef/resource/lwrp_base'

class Chef
  class Resource
    class HollandbackupBackupset < Chef::Resource::LWRPBase
      self.resource_name = :hollandbackup_backupset
      actions :configure
      default_action :configure

      # template
      attribute :name, :kind_of => String, :name_attribute => true
      attribute :cookbook, :kind_of => String, :default => 'hollandbackup'
      attribute :source, :kind_of => String, :default => 'backupset_full.conf.erb'
      attribute :owner, :kind_of => String, :default => 'root'
      attribute :group, :kind_of => String, :default => 'root'
      attribute :mode, :kind_of => String, :default => '0644'

      # backupset
      attribute :name, :kind_of => String, :name_attribute => true
      attribute :plugin, :kind_of => String, :default => 'mysqldump'
      attribute :backups_to_keep, :kind_of => Integer, :default => 1
      attribute :estimated_size_factor, :kind_of => String, :default => '1.0'
      attribute :auto_purge_failures, :kind_of => String, :default => 'yes'
      attribute :purge_policy, :kind_of => String, :default => 'after-backup'
      attribute :before_backup_command, :kind_of => String
      attribute :after_backup_command, :kind_of => String
      attribute :failed_backup_command, :kind_of => String

      # [mysqldump]
      attribute :mysql_binpath, :kind_of => String
      attribute :lock_method, :kind_of => String, :default => 'auto-detect'
      attribute :exclude_invalid_views, :kind_of => String
      attribute :dump_routines, :kind_of => String
      attribute :dump_events, :kind_of => String
      attribute :stop_slave, :kind_of => String
      attribute :bin_log_position, :kind_of => String
      attribute :flush_logs, :kind_of => String
      attribute :file_per_database, :kind_of => String
      attribute :additional_options, :kind_of => String
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

      # backupset-specific plugin configuration
      attribute :mysqldump, :kind_of => Hash, :default => {}

      def path(arg = nil)
        if arg.nil? && @path.nil?
          "/etc/holland/backupsets/#{name}.conf"
        else
          set_or_return(:path, arg, :kind_of => String)
        end
      end
    end
  end
end
