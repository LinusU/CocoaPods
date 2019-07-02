require File.expand_path('../../../spec_helper', __FILE__)

module Pod
  describe Command::Setup do
    extend SpecHelper::Command

    extend SpecHelper::TemporaryRepos

    before do
      config.repos_dir = SpecHelper.tmp_repos_path
    end

    it 'Displays deprecation notice' do
      UI.expects(:puts).with('`pod setup` was deprecated in 1.8.0, because new CDN trunk does not need any specific setup steps.').once
      run_command('setup')
    end
  end
end
