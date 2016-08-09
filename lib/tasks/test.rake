namespace :test do
  desc 'Run the CI'
  task run: :environment do
    ci_build = CircleCi::Project.build_branch(
      'onurkucukkece',
      'boost-ads',
      'master'
    )
    Rails.logger.info ci_build.inspect
  end
end
