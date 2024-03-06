require 'json'


class RandomNumber < Formula
    include Language::Python::Virtualenv
    desc "test repo for trying homebrew packaging"
    homepage "https://github.com/alteredtech/random-number"
    
    version v1.2.22
    license "MIT"

    url "https://github.com/alteredtech/random-number/releases/download/v1.2.22/random-number-release.tar.gz"
    sha256 
    
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
