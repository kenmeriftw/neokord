# Closest Fibonacci couter

This web application created due to test task for Neokord.

Just enter an integer number in the number field, press `RUN` and get the closest number from Fibonacci sequence.

To run this project on your local machine you have to: Clone this repo using
```
git clone git@github.com:knmrftw/neokord.git
```
then make cd to new directory.

Make sure you have installed `ruby-2.7.2`, or just skip this step if you have it installed already on your machine.

Run
```
bundle
```
to install all gems and it's dependencies.

Install `yarn` on your local machine or just skip this step if you have it.

Run
```
yarn
```
to pack all the frontend content.

Do not forget to make
```
rails db:create
rails db:migrate
```
to create database and run all ActiveRecord migrations.

Run
```
rails s
```
to start local server and
```
bin/webpack-dev-server
```
to start webpacker server.

By default, your application will be available at localhost:3000 link

Hope you will enjoy it!
