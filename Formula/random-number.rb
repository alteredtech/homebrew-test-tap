
require 'json'

class RandomNumber < Formula
    include Language::Python::Virtualenv
    desc "test repo for trying homebrew packaging"
    homepage "https://github.com/alteredtech/random-number"

    release = JSON.parse(File.open(File.expand_path('../../tools/release.json', __FILE__)).read)
    version release['version']
    license "MIT"

    url "https://github.com/alteredtech/random-number/releases/download/#{version}/tools-core-#{version}.tar.gz"
    sha256 release['sha256']
    
    depends_on "python@3.12"

    

    def python3
        "python3.12"
    end
  
    def install
        venv = virtualenv_create(libexec, python3)
        venv.pip_install resources
        venv.pip_install_and_link buildpath
    end
  
    test do
    end
  end