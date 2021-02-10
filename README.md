# README

memo while creating.

1. intall yarn for ruby.

2. create controller  - rails g controller home index
   create controllers>home_controller.rb
          routes.rb
            get 'home/index'
          views>home>index.html.erb       
   url for the home page is now localhost:3000/home/index
  
   change routes.rb
    get 'home/index' --> root 'home#index'
    in order to make url of the home page to localhost:3000   

3. create scaffold(database model/table)  -rails g scaffold friends first_name:string last_name:string Email:string phone:string facebook:string
   create db>migration name as create_friends.rb
          routes.rb
            resources :friends
          views>friends>
          controllers>friends_controller.rb
   data type referance : https://guides.rubyonrails.org/v3.2/migrations.html#supported-types

4.rails db:migrate
  make schema - push the migration, make the database alive.

5. rails routes
   check out the actual routeing path of resources on the routes.rb
   add _path behind the route when we use them.

6. gem --third party thing work in ruby.
   rubygems.org > devise
   gem for authentication solution.
    while installing gem to ruby(can follow the instruction of documentation):
    1. copy gem from rubygems.org and paste at gemfile
    2. run bundle install in tarminal.
    3. rails generate devise:install
       follow the instruction displayed in terminal setup environment.
       create all views for the auth(sign in, signout, sign out, etc).
       rails g devise:views
    4. create MODEL (db)(always have two process 1. create migration 2. push migration)
       a.create migration:rails generate devise user
       b.push migration: rails db:migrate

7. for sign out we need to delete the session of sign in.
   add method : :delete
8. add id to table.
   rails g migration add_user_id_to_friends user_id:integer:index

9. controller
   before_action          check on start up.
   before_action :set_friend, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!, except: [:index, :show]
   before_action :correct_user, only: [:edit, :update, :destroy]

10. @friend = current_user.friends.build

11. Initializing Git For Version Control
    git config --global user.name "Your Name"
    git config --global user.email "you@youraddress.com"
    git config --global push.default matching
    git config --global alias.co checkout
    git init

12. add to local repository
   git add .

13. commit
   git commit -am 'message here'

14. generate key to push to third part repository like github.com(microsoft)
   mkdir ~/.ssh
   cd ~/.ssh
   ssh-keygen.exe     (created public key which contain .pub)
   cat id_rsa.pub     (concatnate to generate ssh key)
   copy the long ssh key and paste in the github.com>setting>ssh and gpg key>New SSH key

15. create new repository.
    follow the instruction to push an existing repository.

16. every time when you push updates
    git add .
    git commit -am 'message here'
    git push

problem faced:
VS code could not log on to github. --> used git bash.