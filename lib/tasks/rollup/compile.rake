namespace :rollup do
  desc "Compile using rollup with yarn build"
  task :compile do
    system "yarn install && yarn build"
  end
end

Rake::Task["assets:precompile"].enhance(["rollup:compile"])
