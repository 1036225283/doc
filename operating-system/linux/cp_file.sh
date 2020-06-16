scp -r /Users/xws/Downloads/code ubuntu@www.1036.com:/home/ubuntu/

#copy pub.key to .ssh/authorized_keys
cat 1.pub >> .ssh/authorized_keys
