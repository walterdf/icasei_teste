# README

Document for installing Icasei Test.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* <b>Ruby version</b>
<br>v2.3.1-p112

* <b>Version of the software used</b>
<br>Rails - v5.0.0.1
<br>Mongodb - v2.6.10
  
* <b>System dependencies</b>
<br>Rspec - v3.5.0
<br>Bootstrap - v3.3.7
<br>Jquery - v.1.12.4

* <b>Database creation</b>
<br>The service MongoDB must be installed on the server, preferably version v2.6.10.
<br>Install on Linux : https://docs.mongodb.com/manual/administration/install-on-linux/
<br>Install on Windows : https://docs.mongodb.com/manual/tutorial/install-mongodb-on-windows/
<br>Install on OSX: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-os-x/
<br>All information on the services performed by mongodb can be found on its official website
<br>http://www.mongodb.com/

* <b>Configuration</b><br>
I used the bundle to manage my gem, open a terminal and run this command<br>
<tt>$ gem install bundler</tt><br>
Second step: run this command in the application's root directory<br>
<tt>$ bundle install</tt><br>
Third step: edit file /config/mongoid.yml section hosts with address service mongodb<br>
<tt>$ rails server --binding localhost</tt>

* <b>How to run the test suite</b><br>
<tt>$ rspec</tt>
