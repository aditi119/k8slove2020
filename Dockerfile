from centos
maintainer aditikhemka03@gmail.com
run yum install httpd -y
run mkdir /mycode
env  x=app
copy webapp1 /mycode/webapp1
copy webapp2 /mycode/webapp2
copy start.sh /mycode/start.sh
run chmod +x /mycode/start.sh
expose 80
entrypoint ["/bin/bash","/mycode/start.sh"]