hollandbackup_install 'test' do
  action :create
  additional_packages ['holland-mysqldump']
end
