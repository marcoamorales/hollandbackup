hollandbackup_install 'test' do
  action :create
  additional_packages ['holland-mysqldump']
end

hollandbackup_install 'test' do
  action :delete
end
