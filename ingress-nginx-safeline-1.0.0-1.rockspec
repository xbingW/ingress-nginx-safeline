package = "ingress-nginx-safeline"
version = "1.0.0-1"
source = {
   url = "git://github.com/xbingW/ingress-nginx-safeline.git"
}
description = {
    summary = "Ingress-Nginx plugin for Chaitin SafeLine Web Application Firewall",
   homepage = "https://github.com/xbingW/ingress-nginx-safeline",
   license = "Apache License 2.0",
   maintainer = "Xiaobing Wang <xiaobing.wang@chaitin.com>"
}
build = {
   type = "builtin",
   modules = {
      main = "main.lua"
   }
}
