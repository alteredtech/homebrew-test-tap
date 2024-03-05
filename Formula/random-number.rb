require 'json'


class RandomNumber < Formula
    desc "test repo for trying homebrew packaging"
    homepage "https://github.com/alteredtech/random-number"
    
    release = JSON.parse(File.open(File.expand_path('../../tools/release.json', __FILE__)).read)
    version release['version']
    license "MIT"

    url "https://github.com/alteredtech/random-number/releases/download/#{version}/random-number-release.tar.gz"
    sha256 release['sha256']
    
    depends_on "python@3.11"
  
    def install
      system "pipenv install --system --deploy --ignore-pipfile"
      bin.install "scripts/*"
    end
  
    test do
    end
  end