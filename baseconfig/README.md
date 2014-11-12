This creates an image to configure an ssh accessible base container with emacs install setting up a root password on the command line and choosing the port you want to expose for ssh

To use it do
```
docker run -d -e ROOTPWD=your-secret-pwd -e SSHPORT=youchoose -p youchoose:youchoose yvnicolas/sandbox:baseconfig
```

As best practice for Docker recommands the use of `VOLUME` in Dockerfile for exposing user data which is the case for most official images, this image can be used to get an ssh access to service containers.

Example with mysql :
```
# First create a mysql container
docker run --name my-sql-container -e MYSQL_ROOT_PASSWORD=mysecretpassword -d mysql

# get ssh access to /var/lib/mysql of this sql container thru
docker run -d --volumes-from my-sql-container -e ROOTPWD=your-secret-pwd -e SSHPORT=youchoose -p youchoose:youchoose yvnicolas/sandbox:baseconfig
```
