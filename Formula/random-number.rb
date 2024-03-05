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
    
    depends_on "python@3.11"

    File.open(File.expand_path('../../tools/resources.txt', __FILE__), 'r') do |f|
      f.read.each_line do |line|
        name, url, sha256 = line.strip.split(',')
        resource name do
          url url
          sha256 sha256
        end
      end
    end
  
    def install
      bin.install "scripts/*"
      virtualenv_install_with_resources
    end
  
    test do
    end
  end