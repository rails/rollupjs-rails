# rollup.js for Rails

Use [rollup](https://rollupjs.org) to bundle your JavaScript, then deliver it via the asset pipeline in Rails. This gem provides an installer to get you going with rollup in a new Rails application, and a convention to use `app/assets/builds` to hold your bundled output as artifacts that are not checked into source control (the installer adds this directory to `.gitignore` by default).

You develop using this approach by running rollup in watch mode in a terminal with `yarn build --watch` (and your Rails server in another, if you're not using something like [puma-dev](https://github.com/puma/puma-dev)). Whenever rollup detects changes to any of the JavaScript files in your project, it'll bundle `app/javascript/application.js` into `app/assets/builds/javascript.js`. You can refer to the build output in your layout using the standard asset pipeline approach with `<%= javascript_include_tag "application" %>`.

When you deploy your application to production, rollup attaches to the `assets:precompile` task to ensure that all your package dependencies from `package.json` have been installed via npm, and then runs `yarn build` to process `app/javascript/application.js` into `app/assets/builds/javascript.js`. The latter file is then picked up by the asset pipeline, digested, and copied into public/assets, as any other asset pipeline file.

That's it!

You can tailor the configuration of rollup through the `rollup.config.js` that's created in the root of your project by the installer.


## Installation

You must already have node and yarn installed on your system. Then:

1. Add `rollupjs-rails` to your Gemfile with `gem 'rollupjs-rails'`
2. Run `./bin/bundle install`
3. Run `./bin/rails rollup:install`

Or, in Rails 7+, you can preconfigure your new application to use rollup with `rails new myapp -j rollup`.


## The sister gem to esbuild-rails

This gem is almost identical in setup and purpose as [`esbuild-rails`](https://github.com/rails/esbuild-rails), which follows the same conventions, but uses [esbuild](https://esbuild.github.io) instead.


## License

rollup for Rails is released under the [MIT License](https://opensource.org/licenses/MIT).
