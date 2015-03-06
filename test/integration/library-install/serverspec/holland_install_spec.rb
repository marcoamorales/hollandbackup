require 'serverspec'

set :backend, :exec

describe package('holland') do
  it { should be_installed }
end

describe file('/etc/holland') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 755 }
end
