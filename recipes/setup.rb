package 'tree' do
  action :install 
end

package 'git' do
  action :install
end

package 'ntp' 

file '/etc/motd' do
  content 'this server is the property of Henry Potter'
  action :create
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end
