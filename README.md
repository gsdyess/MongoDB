# mongodb


Steps tacken to acheve the end results:

1.created directory: mongodb

2.created in nano install.rd file:

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

    test out install.rb: $ sudo chef-client --local-mode install.rb

    Create a cookbook: apache_http

 3. Generate cookbook: $ chef generate cookbook cookbooks/mongo

 4. Run the cookbook $ sudo chef-client --local-mode --runlist 'recipe[mongo]'

 5. test by typing mongo at the prompt

Build and test process Built on AWS CentOS 7.4 (VM Image 1) Tested on AWS CentOS 7.4 (VM Image 2)

Tools and resources used in the process:

    AWS CentOS VM IMages: 1 vm for development and 1 for testing
    Nano editor
    git

Resources:

    Chef Rally site
    Chef Documentation
    Google search

Run on node:

    Git clone from https://github.com/gsdyess/mongodb.git

    Create cookbook: $ sudo chef-client --local-mode --runlist 'recipe[mongo]’

    test by typing mongo at the prompt
