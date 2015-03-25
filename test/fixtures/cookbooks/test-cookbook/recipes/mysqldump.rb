hollandbackup_mysqldump 'mysql' do
  user 'root'
  password 'ilikerandompasswords'
  socket '/var/run/mysql-default/mysqld.sock'
  host '127.0.0.1'
  port '3306'
end
