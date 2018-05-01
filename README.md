# project-eos
Project EOS -- Dawn 3 EOS project box (playground for playing)


# Bring up the VM and run the provision script!
vagrant up

The provision script should install the packages required to clone and install EOS.
Then trigger the EOS build process and installation of EOS on the VM.


# SSH into the EOS vagrant box and run some tests
vagrant ssh
cd eos

vagrant@vagrant:~/eos$ /home/vagrant/opt/mongodb/bin/mongod -f /home/vagrant/opt/mongodb/mongod.conf &
[1] 29967
vagrant@vagrant:~/eos$ export PATH=${HOME}/opt/mongodb/bin:$PATH
vagrant@vagrant:~/eos$ cd /home/vagrant/eos/build; make test

Wait for tests to pass or fail

100% tests passed, 0 tests failed out of 33
Total Test time (real) = 778.88 sec

# Playtime
Now we need to start playing around and understanding EOS
