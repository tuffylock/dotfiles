rails app setup:

* manually install ruby using rbenv, as listed in .ruby-version and/or Gemfile
  * `rbenv install 2.7.3`
  * `rbenv which ruby` will also display an error listing it
* `gem install bundler`
* `gem install rails`
  * `gem install rails --version 6.1.3` (check Gemfile/readme)
  * (why does bundle install print rails installed but that doesn't work?)
* `bundle install`
* https://postgresapp.com/downloads.html
  * set up paths (instructions on home page)
  * `sudo mkdir -p /etc/paths.d &&
echo /Applications/Postgres.app/Contents/Versions/latest/bin | sudo tee /etc/paths.d/postgresapp`
  * or `brew install postgresql`
    * autostart https://chartio.com/resources/tutorials/how-to-start-postgresql-server-on-mac-os-x/
  * other pg.app path thing? https://fdp.io/blog/2013/05/23/setup-postgresql-for-rails-on-a-mac/
  * env vars etc https://medium.com/geekculture/postgresql-rails-and-macos-16248ddcc8ba and https://www.digitalocean.com/community/tutorials/how-to-use-postgresql-with-your-ruby-on-rails-application-on-macos
* rails new app_name -d=postgresql
* bin/rake db:create
  * bin/ faster than bundle exec? https://andre.arko.net/2021/02/22/never-bundle-exec-again/
  * https://stackoverflow.com/questions/35634898/rake-dbcreate-vs-rake-dbcreateall


* see more relevant methods:
  * current_span.methods.sort - Object.methods


* skip views etc when using rails generate controller
  * `config.api_only = true` in application.rb
* generate only views etc for pre-existing controllers
  * `rails g controller Users index -s --skip-collision-check --skip-routes --no-helper --no-assets --no-request-specs --no-controller-specs --no-view-specs --no-routing-specs --no-helper-specs`
  * with `-p` to confirm before actual run

`bundle clean` to remove gems removed from gemfile

`_`: placeholder for last return value


generator overview https://www.bigbinary.com/learn-rubyonrails-book/rails-generator-and-bundle-commands


nice extensive rails setup https://gorails.com/setup/osx/11-big-sur


---

custom rails console methods: https://reinteractive.com/posts/352-creating-custom-helper-methods-for-the-rails-console

First, open up config/application.rb and add this:

```
module MyRailsApp
  class Application < Rails::Application
    # Add custom global helper methods to the console.
    console do
      # Use this if you use IRB (the default Rails console).
      Rails::ConsoleMethods.include(ConsoleMethods)

      # Use this if you use Pry.
      # See https://blog.nhocki.com/2015/06/03/add-helper-methods-to-your-rails-console-with-pry/ for more information.
      TOPLEVEL_BINDING.eval('self').extend(ConsoleMethods)
    end
  end
end
```

Then create a new file called app/lib/console_methods.rb and add your method. Here's my method for the JWT scenario as an example, although obviously, you can place any method that you want here:

```
module ConsoleMethods
  def load_jwt!
    token = ::JWT.create(user_id: 'USER_ID_HERE')
    RequestLocals.store[:jwt] = token.jwt
  end
end
```

Restart your console and now you can run load_jwt! almost as if it were a built-in Rails console command/method, similar to reload!.
