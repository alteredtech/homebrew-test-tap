require 'json'


class RandomNumber < Formula
    include Language::Python::Virtualenv
    desc "test repo for trying homebrew packaging"
    homepage "https://github.com/alteredtech/random-number"

    release = JSON.parse(File.open(File.expand_path('../../tools/release.json', __FILE__)).read)
    version release['version']
    license "MIT"

    url "https://github.com/alteredtech/random-number/releases/download/#{version}/random-number-release.tar.gz"
    sha256 release['sha256']
    
    depends_on "python@3.12"

    
  
    def install
      Dir["scripts/*.py"].each do |file|
        bin.install file
      end
      virtualenv_install_with_resources
    end
  
    test do
    end
  end