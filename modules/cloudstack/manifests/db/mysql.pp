class cloudstack::db::mysql {
# yum install mysql-server
# service mysqld start
# mysql_secure_installation (como dar y)


# Set up the database. The following command creates the "cloud" user on the database.
# In dbpassword, specify the password to be assigned to the "cloud" user. You can choose to provide no password although that is not recommended.
# In deploy-as, specify the username and password of the user deploying the database. In the following command, it is assumed the root user is deploying the database and creating the "cloud" user.
# (Optional) For encryption_type, use file or web to indicate the technique used to pass in the database encryption password. Default: file. See Section 4.5.5, “About Password and Key Encryption”.
# (Optional) For management_server_key, substitute the default key that is used to encrypt confidential parameters in the CloudStack properties file. Default: password. It is highly recommended that you replace this with a more secure value. See Section 4.5.5, “About Password and Key Encryption”.
# (Optional) For database_key, substitute the default key that is used to encrypt confidential parameters in the CloudStack database. Default: password. It is highly recommended that you replace this with a more secure value. See Section 4.5.5, “About Password and Key Encryption”.
# (Optional) For management_server_ip, you may explicitly specify cluster management server node IP. If not specified, the local IP address will be used.
# 
# cloudstack-setup-databases cloud:<dbpassword>@localhost \
# --deploy-as=root:<password> \
# -e <encryption_type> \
# -m <management_server_key> \
# -k <database_key> \
# -i <management_server_ip>


# Now that the database is set up, you can finish configuring the OS for the Management Server. This command will set up iptables, sudoers, and start the Management Server.
# cloudstack-setup-management


    
}