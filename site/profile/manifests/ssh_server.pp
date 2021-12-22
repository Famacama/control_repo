class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrhgU4SHKucoaW7SrIyZi9ptLmScS8RIZBna9uKO0uMkxrnpOAZSRTRMCBIg7S0U4XyhoSDjnz624uzguOFDKFtBiiesHrPgBOcZTmEvonjDXZACviQqRUqOQOT3+Q6z7HduoP/Q31GRykKkYDdk1wPqtH6qVwOE6zoI0u705aafoWX6+uY5jmLJvOv3xvu6Q2BXXQZPWIoHsRT89oihnUQq/lMEiettvbh4HmO4WJ8tNfwm6YJL85iayScEGMXcpHhjnoGNC/yXnC2aGCjXqqHrUjJen1fRuUtljQ7NUpQ8Nd8cSa8zbtZTp24YM40VmFxkPEpJKHfWT2+9FsKzp3 root@master.puppet.vm',
	}  
}
