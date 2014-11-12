This creates an image to configure an ssh accessible base container with emacs install setting up a root password on the command line and choosing the port you want to expose for ssh

To use it do
```
docker run -d -e ROOTPWD=your-secret-pwd -e SSHPORT=youchoose -p youchoose:youchoose yvnicolas/sandbox:baseconfig
```
