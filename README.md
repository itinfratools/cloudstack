# CloudStack

### CloudStack vagrant instalation


Build Vagrant Box:

    $ git clone https://github.com/wagnersza/cloudstack
    $ cd cloudstack
    $ bundle install
    $ cd vagrant/vagrant_box_builder/
    $ bundle install
    $ veewee vbox build CentOS-6.4-x86_64-minimal
    $ veewee vbox export CentOS-6.4-x86_64-minimal
    $ mv *.box iso/