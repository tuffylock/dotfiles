# other ppls dotfiles

* sd ppl
  * adam: https://github.com/derwiki/dotfiles
  * dana: https://github.com/dmerrick/configs
* wb ppl
  * https://github.com/mculp/dotfiles
    * highlight'd https://github.com/mculp/dotfiles/blob/main/dot_psqlrc
* app academy: https://github.com/appacademy/dotfiles

* some guys full macbook setup https://gist.github.com/joncalhoun/3d3401da5e159a154069eb12bb0ca296

* seems like good rundown (many sysprefs match mine) https://betterprogramming.pub/how-to-set-up-your-macbook-for-web-development-in-2021-a7a1f53f6462


* myk git scripts: https://github.com/mbilokonsky/mit
  * "if you REALLY want to optimize, the thing you need to know is that any executable file on your path whose filename starts with git- becomes a git command.
For instance, if you have a script called git-pr which automatically generates a PR from your current commit, you can add git-pr to your path and then using git just type git pr and it'll execute that script.
then you can alias it to gpr or whatever to really save time :wink:"

* app academy setup https://github.com/appacademy/campus-hybrid-setup/blob/master/macos-setup.md

syncing dotfiles
* automation (paid) https://www.ansible.com/products/automation-platform
* https://github.com/lra/mackup/
  * troubleshooting file sources https://stackoverflow.com/questions/60354494/sync-macos-settings-using-mackup
* via wrapbook ppl:
  * I guess I'm old school cause I just symlink my dotfiles to a private git repo. These look pretty cool though.
  * https://www.chezmoi.io/
  * https://www.gnu.org/software/stow/
  * https://freshshell.com/

* using homebrew vs using regular installs
 * mbe i'll just use regular installs for gui programs (casks)?

* rbenv vs rvm
  * jake uses rbenv
  * adam uses rvm
  * appacademy uses rbenv
  * snapdocs used rvm

* atom official deep guide https://flight-manual.atom.io/using-atom/

* fun web design
  * https://www.finalform.systems/

* online radio stations / music
  * https://neal.fun/ambient-chaos/
  * https://somafm.com/
  * https://jetsetradio.live/
  * https://smallrat.net/coolzone/
  * https://mindmelt.party/
  * https://www.deeplink.stream/

* charting charts diagrams
  * excalidraw
  * lucid.app
  * graffle
  * https://sequencediagram.org/
    * use code to chart lifecycles etc
  * https://dbdiagram.io/home
    * erb diagrams (with rails schema import!)
  * "Mermaid" in notion.so
    * https://mermaid-js.github.io/mermaid/#/

* documentation
  * https://docusaurus.io/
    * written in markdown and deployed via GitHub
    * https://docusaurus.io/docs/deployment#deploying-to-netlify

* paywall bypass
  * archive.ph

* postgres: brew vs postgres.app
  * app allows you to run specific multiple dbs easily? doesn't auto-upgrade? https://chrisrbailey.medium.com/postgres-on-mac-skip-brew-use-postgres-app-dda95da38d74
  * https://www.reddit.com/r/PostgreSQL/comments/8gxxve/postgres_on_mac_brew_vs_postgresappcom/
    * everyone suckin docker dick
    * I use PostgreSQLApp, running in brew I’ve had to create another user on my machine, using the app it just works with no setup, bonus using the app the cli tools are installed as well


* bundle exec bin/rake, etc
  *
  * bundle exec ensures you're triggering commands from gems in your Gemfile. may not be that useful for rails command but is definitely needed for rake for instance.
  * the first thing the rails command does is load up bundler and check which version of the command to execute. So you'd really just be slowing yourself down to involve bundler in the first place when running the rails command.
  * So, at the end of the day there's no difference. But considering the fact that Rails goes through the trouble of shipping its own binstubs, I'd favor bin/rails alternative. Also, it autocompletes better.
  * If you use the --binstubs flag in bundle install, Bundler will automatically create a directory (which defaults to app_root/bin) containing all of the executables available from gems in the bundle.
  * After using --binstubs, bin/rspec spec/my_spec.rb is identical to bundle exec rspec spec/my_spec.rb.
  * Binstubs may also include other customizations like loading spring gem, which preloads and speeds up the Rails application.
  * x
  * rake and rails work for db commands ?? does rails need bundle exec in that case?
    * https://stackoverflow.com/a/23846736/5598661
    * So for most commands you'll want to run bundle exec <command> to make sure you're running the right version for your project (and also to make sure that all dependencies are also loaded from the correct versions specified in your Gemfile.lock). The one notorious exception to this rule is the rails command. The reason being that the first thing the rails command does is load up bundler and check which version of the command to execute. So you'd really just be slowing yourself down to involve bundler in the first place when running the rails command.
    * https://stackoverflow.com/a/66312866/5598661
    * So which is faster to run? rake for actual rake tasks, as it'll bypass the extra logic in needing to determine it was being passed rake arguments. But also rails specific arguments cannot be ran with rake e.g. bundle exec rake generate will not work (unless you have a generate task). If in doubt, run bundle exec rails --help and in at least Rails v5, it'll output which arguments are rails specific and which are rake specific.

* ssh
  * ssh agent is for handling password protected keys/connections? https://smallstep.com/blog/ssh-agent-explained/
  * https://www.freecodecamp.org/news/git-ssh-how-to/


* oh my zsh ?
  * https://www.sitepoint.com/zsh-tips-tricks/
  * https://stackabuse.com/pimp-my-terminal-an-introduction-to-oh-my-zsh/
  * has up key history contextual to typed characters
  * don't have to use cd for directory navigation?
    * Oh My Zsh also supports dynamic path completion, so typing (for example) /h/j/De and pressing Tab will expand the path to /home/jim/Desktop.


* command line console terminal shell bash zsh prompt repl
  * https://askubuntu.com/a/506628 (very nice and thorough, including lifecycle breakdown)
  * A read–eval–print loop (REPL), also termed an interactive toplevel or language shell, is a simple interactive computer programming environment that takes single user inputs, executes them, and returns the result to the user; a program written in a REPL environment is executed piecewise.[1] The term usually refers to programming interfaces similar to the classic Lisp machine interactive environment. Common examples include command-line shells and similar environments for programming languages, and the technique is very characteristic of scripting languages.[2]
  * "Command line is very windows centric terminology, terminal is very mac centric."
  * A terminal once literally meant a box you typed into, remotely connected to a mainframe. Modern 'terminals' are terminal emulators which behave roughly like a standard terminal would. The terminal provides a mechanism for entering commands. You run a command processor, or shell, on top of that - bash, fish, csh or others. This is what actually turns the text that is typed into the terminal into instructions that the computer acts on. Most shells allow scripting, and you'd see a very different syntax between say bash or csh. They would run similarly on different terminals.
  * The terminal is a container for the shell (or any other program). It provides input (through connected input devices) and displays output on two channels: stdout and stderr. Generally on most *nix systems you should be able to run $SHELL --version to see what shell you are running in. What hasn't been mentioned is that shells like Bash have three major modes: login, interactive, script. Login and interactive are very similar from a user's perspective. Script is when the shell is used to interpret commands in batch.
  * https://stackoverflow.com/a/56658125/5598661 (bad, but being wrong online brings aggressive correctors)
    * A "command line" is a style of interfaces that a shell provides, but there are plenty of programs that aren't UNIX shells that provide command lines.
    *  ls is not a bash command. bash doesn't know what ls is at all! It's just a UNIX program that happens to typically be installed on machines that bash is also installed on; but it gets run the same way any other program would be, whether or not that program is standard or built-in or commonly available.
  * https://stackoverflow.com/a/64316750/5598661
    * When you are at a **command line**, typing in commands and reading output you are working in a program called a **terminal** (or **console** on windows). The terminal is taking your commands and forwarding them to a program, called a **shell**, who's job is to actually execute the commands you type in to the terminal and possibly print some output. The output from the shell is then displayed in your terminal window.
    * The terminal is like the web browser and the shell is like the javascript engine. Your browser takes your input (click, keypresses, mousemoves) and sends them along to javascript which processes those actions and the browser displays the results.
    * One thing to note is that you can swap out the terminal and the shell indepedently. For example, you can easily swithc to iTerm2 and still keep using bash or switch to zsh but keep using the current terminal. You might not get all features with some combination, but generally they are universally compatible. –
