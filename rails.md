`_`: placeholder for last return value


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
