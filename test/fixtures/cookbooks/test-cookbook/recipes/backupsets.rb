hollandbackup_backupset 'default' do
  plugin 'mysqldump'
  file_per_database 'yes'
end
