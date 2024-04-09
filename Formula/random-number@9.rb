
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
        url "https://files.pythonhosted.org/packages/a7/21/322c3d5c2d04d4e8d0abac44d3de847ce1dc743e08a4606055b94be8c5d4/mysql-connector-python-8.0.23.tar.gz"
        sha256 "5e84dcc25d4b505118e0c28f07de496a41bc0ab121232a2aba83d0248cd49257"
    end
    
    resource "protobuf" do
        url "https://files.pythonhosted.org/packages/d2/e5/7e22ca7201a6b1040aae7787d0fe6cd970311da376a86fdafa5182be1d1b/protobuf-5.26.1.tar.gz"
        sha256 "8ca2a1d97c290ec7b16e4e5dff2e5ae150cc1582f55b5ab300d45cb0dfa90e51"
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