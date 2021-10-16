# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Rough DB Schema

property
========
- number
- address

bill
====
- start_date
- end_date
- amount
- property_id

tenant
======
- name
- move_in_date
- move_out_date
- property_id
