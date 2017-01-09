# rake routes
                  Prefix Verb   URI Pattern                    Controller#Action
        new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
            user_session POST   /users/sign_in(.:format)       devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
           user_password POST   /users/password(.:format)      devise/passwords#create
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                         PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
       user_registration POST   /users(.:format)               devise/registrations#create
   new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
  edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
                         PATCH  /users(.:format)               devise/registrations#update
                         PUT    /users(.:format)               devise/registrations#update
                         DELETE /users(.:format)               devise/registrations#destroy
                   store GET    /                              store#index
                   items GET    /items(.:format)               items#index
                    item GET    /items/:id(.:format)           items#show
              categories GET    /categories(.:format)          categories#index
                category GET    /categories/:id(.:format)      categories#show
                    user GET    /users/:id(.:format)           users#show
                   carts GET    /carts(.:format)               carts#index
                         POST   /carts(.:format)               carts#create
                new_cart GET    /carts/new(.:format)           carts#new
               edit_cart GET    /carts/:id/edit(.:format)      carts#edit
                    cart GET    /carts/:id(.:format)           carts#show
                         PATCH  /carts/:id(.:format)           carts#update
                         PUT    /carts/:id(.:format)           carts#update
                         DELETE /carts/:id(.:format)           carts#destroy
              line_items POST   /line_items(.:format)          line_items#create
                   order GET    /orders/:id(.:format)          orders#show
                checkout POST   /carts/:id/checkout(.:format)  carts#checkout

===============================================================================

Some setup you must do manually if you haven't yet:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views

===============================================================================
