
require 'json'

class RandomNumberAT9 < Formula
    include Language::Python::Virtualenv
    desc "test repo for trying homebrew packaging"
    homepage "https://github.com/alteredtech/random-number"

    release = JSON.parse(File.open(File.expand_path('../../tools/release-dev.json', __FILE__)).read)
    version release['version']
    license "MIT"

    url "https://github.com/alteredtech/random-number/releases/download/#{version}/tools-core-#{version}.tar.gz"
    sha256 release['sha256']
    
    depends_on "python@3.12"
    depends_on "pkg-config" => :build
    depends_on "rust" => :build
    depends_on "certifi"
    depends_on "python-cryptography"
    depends_on "mozjpeg"
    depends_on "cmake" => :build
    depends_on "libxml2" => :build
    depends_on "libxslt" => :build

    
    resource "mysql-connector-python" do
        url "https://files.pythonhosted.org/packages/d3/60/be97d5a73de74f16c612cb6e477bfb949d9e39befea4812d8c21b26f62e1/mysql-connector-python-8.2.0.tar.gz"
        sha256 "884eba07b4c97edf552a03f5fdca145e0ab4afc3d8677cca20276effca1bea54"
    end
    
    resource "protobuf" do
        url "https://files.pythonhosted.org/packages/ba/dd/f8a01b146bf45ac12a829bbc599e6590aa6a6849ace7d28c42d77041d6ab/protobuf-4.21.12.tar.gz"
        sha256 "7cd532c4566d0e6feafecc1059d04c7915aec8e182d1cf7adee8b24ef1e2e6ab"
    end
    

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