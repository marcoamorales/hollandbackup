mysql_service 'default' do
  action [:create, :start]
end

mysql_client 'default'

hollandbackup_install 'test' do
  action :create
  additional_packages ['holland-mysqldump']
end
