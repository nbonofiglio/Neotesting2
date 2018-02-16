### README ###

Welcome to the Neotesting Application for the Tree of Life. The Tree of Life is a wire frame tree with a strip of 240 LED lights attached to it. This application allows the user to control the lights on the tree however they like, whether it be to change the color, set a pattern, or use one of the preset algorithms to make something really special.

Ruby version: 2.4.0
Rails 5.1.4

Authors: Nick Bonofiglio, Andy Carlson, Arrachael Miller, Rook Skudder, and Margaryta Tchouikevitch

Gems added to this project:
	-Redis (Server)
	-Postgres (Database)
	-Devise (User configuration)
	-Apiotics (Hardware communication)

### SET UP ###

To create your own configuration, please visit Apiotics.com to set up your account today and follow their online tutorials to get started!

### HOW TO RUN LOCALLY ###

1) Make sure that you have compatible versions of Ruby and Rails installed on your computer.
2) Open terminal and navigate to the project folder.
3) Make sure that you have compatible versions of Redis Server and Postgres installed on your computer, and that the proper Postgres database is running.
4) Run "rake dev_comms:start" to start the Apiotics server.
5) Run "worker.sync_devices"
6) Run "redis-server" to start the redis server
7) Run "rails s" and in your browser, go to "http://localhost:3000" to launch the Application.


