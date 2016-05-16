# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
user = User.create! email: 'ali@user.com',name: 'Ali User', password: 'password', role: :user
guest = User.create! email: 'ali@guest.com',name: 'Ali Guest', password: 'password', role: :guest
admin = User.create! email: 'ali@admin.com',name: 'Ali Admin', password: 'password', role: :admin

[admin, user, guest].each { |user| TaskList.create! title: "This is a sample task of #{user.role}", user: user }