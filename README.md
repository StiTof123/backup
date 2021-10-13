-- Script function --
To backup users /home/Documents folder

Save location local= /home/<user>/backup
Save location remote= <user>@<remote-server> /home/<user>/backup/ via ssh

If remote server is not availabla use "document-backup-local.sh"

Script automatically removes backup files over 5days locally, and 10days remotely.

--Remote server setup-- 
1. username needs to be identical on remote server
		- add folder "backup" to users remote home folder
2. ssh needs to be enabled on both client and server with ssh-key
		- to add ssh-key use command locally:
			ssh-keygen 
			ssh-copy-id <remote-server>
3. ssh needs to be able to export script variable 
		- add "SendEnv NODE" to end of file /etc/ssh/ssh_config on remote server.
4. change ip address to your local ip. ip addresses locaded on line 13 14 15.

that's it

please contact me for bug report

br

Stian Toftevåg
