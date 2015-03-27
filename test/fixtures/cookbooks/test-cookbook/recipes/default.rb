mysql_service 'default' do
  action [:create, :start]
end

mysql_client 'default'

hollandbackup 'Install and configure holland' do
  action [:install, :configure]
  additional_packages ['holland-mysqldump']
end
