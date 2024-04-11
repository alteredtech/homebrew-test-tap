
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
    depends_on "webp"         # Pillow
    depends_on "libjpeg"      # Pillow
    depends_on "libtiff"      # Pillow
    depends_on "little-cms2"  # Pillow

    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/71/da/e94e26401b62acd6d91df2b52954aceb7f561743aa5ccc32152886c76c96/certifi-2024.2.2.tar.gz"
        sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9a5e4e66f"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
        sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
    end
    
    resource "defusedxml" do
        url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
        sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
    end
    
    resource "idna" do
        url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
        sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
    end
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/78/b4/557e4c80c0ea12164ffeec0e29372c085bfb263faad53cef5e1455523bec/jira-3.8.0.tar.gz"
        sha256 "63719c529a570aaa01c3373dbb5a104dab70381c5be447f6c27f997302fa335a"
    end
    
    resource "oauthlib" do
        url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
        sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
    end
    
    resource "packaging" do
        url "https://files.pythonhosted.org/packages/ee/b5/b43a27ac7472e1818c4bafd44430e69605baefe1f34440593e0332ec8b4d/packaging-24.0.tar.gz"
        sha256 "eb82c5e3e56209074766e6885bb04b8c38a0c015d0a30036ebe7ece34c9989e9"
    end
    
    resource "Pillow" do
        url "https://files.pythonhosted.org/packages/73/59/3192bb3bc554ccbd678bdb32993928cb566dccf32f65dac65ac7e89eb311/Pillow-8.1.0.tar.gz"
        sha256 "887668e792b7edbfb1d3c9d8b5d8c859269a0f0eba4dda562adb95500f60dbba"
    end
    
    resource "requests" do
        url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
        sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
    
    resource "requests-oauthlib" do
        url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
        sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
    end
    
    resource "requests-toolbelt" do
        url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
        sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
    end
    
    resource "typing_extensions" do
        url "https://files.pythonhosted.org/packages/f6/f3/b827b3ab53b4e3d8513914586dcca61c355fa2ce8252dea4da56e67bf8f2/typing_extensions-4.11.0.tar.gz"
        sha256 "83f085bd5ca59c80295fc2a82ab5dac679cbe02b9f33f7d83af68e241bea51b0"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/7a/50/7fd50a27caa0652cd4caf224aa87741ea41d3265ad13f010886167cfcc79/urllib3-2.2.1.tar.gz"
        sha256 "d0570876c61ab9e520d776c38acbbb5b05a776d3f9ff98a5c8fd5162a444cf19"
    end
    

    def python3
        "python3.12"
    end
  
    def install
        venv = virtualenv_create(libexec, python3)
        resource("Pillow").stage do
          inreplace "setup.py" do |s|
            sdkprefix = MacOS.sdk_path_if_needed ? MacOS.sdk_path : ""
            s.gsub! "openjpeg.h",
                    "probably_not_a_header_called_this_eh.h"
            s.gsub! "ZLIB_ROOT = None",
                    "ZLIB_ROOT = ('#{sdkprefix}/usr/lib', '#{sdkprefix}/usr/include')"
            s.gsub! "JPEG_ROOT = None",
                    "JPEG_ROOT = ('#{Formula["jpeg"].opt_prefix}/lib', '#{Formula["jpeg"].opt_prefix}/include')"
            s.gsub! "FREETYPE_ROOT = None",
                    "FREETYPE_ROOT = ('#{Formula["freetype"].opt_prefix}/lib', " \
                                     "'#{Formula["freetype"].opt_prefix}/include')"
          end
    
          # avoid triggering "helpful" distutils code that doesn't recognize Xcode 7 .tbd stubs
          unless MacOS::CLT.installed?
            ENV.append "CFLAGS", "-I#{MacOS.sdk_path}/System/Library/Frameworks/Tk.framework/Versions/8.5/Headers"
          end
          venv.pip_install Pathname.pwd
        end
        res = resources.map(&:name).to_set - ["Pillow"]
        res.each do |r|
          venv.pip_install resource(r)
        venv.pip_install resources
        venv.pip_install_and_link buildpath
    end
    end
  
    test do
    end
  end
