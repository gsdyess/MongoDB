#
# Cookbook:: mongo
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

directory '/etc/yum.repos.d/mongodb-org-3.6.repo' do
  owner 'root'
  action :create
end

yum_repository 'MongoDB_Repository' do
  description "MongoDB Repository"
  baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.6/x86_64/"
  gpgkey 'https://www.mongodb.org/static/pgp/server-3.6.asc'
  action :create
end

yum_package 'mongodb-org'
