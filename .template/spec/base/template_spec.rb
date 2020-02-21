describe 'Generated Rails App' do
  it 'creates pronto linters configuration files' do
    expect(file('.flayignore')).to exist
    expect(file('.pronto.yml')).to exist
    expect(file('.rubocop.yml')).to exist
    expect(file('config.reek')).to exist
  end

  it 'creates semaphore configuration example file' do
    expect(file('.semaphore.yml')).to exist
  end

  it 'creates ruby configuration files' do
    expect(file('.ruby-gemset')).to exist
    expect(file('.ruby-version')).to exist
  end

  it 'creates editor configuration file' do
    expect(file('.editorconfig')).to exist
  end

  it 'creates Procfiles' do
    expect(file('Procfile')).to exist
    expect(file('Procfile.dev')).to exist
  end

  it 'creates the common project bash scripts' do
    expect(file('bin/envsetup.sh')).to exist
  end

  describe '/config' do
    it 'creates the Figaro configuration for application variables' do
      expect(file('/test_app/config/application.yml')).to exist
    end

    it 'creates the database configuration' do
      expect(file('/test_app/config/database.yml')).to exist
    end

    it 'creates the Sidekiq configuration' do
      expect(file('/test_app/config/sidekiq.yml')).to exist
    end
  end
end
