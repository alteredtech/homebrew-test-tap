
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

    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/42/77/59ba070269fb996144ce18b4a4bebcbacf7aeb32b7724b6d46124b730213/boto3-1.34.58.tar.gz"
        sha256 "09e3d17c718bc938a76774f31bc557b20733c0f5f9135a3e7782b55f3459cbdd"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/b3/e9/d965511c91f65ea3eddb9e0bf4dfe96dee9254bf4082f5511dad56f253de/botocore-1.34.58.tar.gz"
        sha256 "d75216952886dc513ea1b5e2979a6af08feed2f537e3fc102e4a0a2ead563a35"
    end

    resource "configparser" do
        url "https://files.pythonhosted.org/packages/82/97/930be4777f6b08fc7c248d70c2ea8dfb6a75ab4409f89abc47d6cab37d39/configparser-6.0.1.tar.gz"
        sha256 "db45513e971e509496b150be31bd67b0e14ab20b78a383b677e4b158e2c682d8"
    end
    
    resource "DateTime" do
        url "https://files.pythonhosted.org/packages/7e/86/2bd8fa8b63c91008c4f26fb2c7b4d661abf5a151db474e298e1c572caa57/DateTime-5.4.tar.gz"
        sha256 "568ea851d40773d846c0b5efe260aecb717c2b933c052a3c13b712809c16b57d"
    end

    resource "dropbox" do
        url "https://files.pythonhosted.org/packages/8d/0f/2059c5ef8669e625a533661a2054a82241696954df6662aeee51a34b1022/dropbox-11.36.2.tar.gz"
        sha256 "d48d3d16d486c78b11c14a1c4a28a2611fbf5a0d0a358b861bfd9482e603c500"
    end
    
    resource "inquirerpy" do
        url "https://files.pythonhosted.org/packages/64/73/7570847b9da026e07053da3bbe2ac7ea6cde6bb2cbd3c7a5a950fa0ae40b/InquirerPy-0.3.4.tar.gz"
        sha256 "89d2ada0111f337483cb41ae31073108b2ec1e618a49d7110b0d7ade89fc197e"
    end
    
    resource "Interactive" do
        url "https://files.pythonhosted.org/packages/ef/f7/4a60ac46854eeaab30916ce6df80ff9d2f7a40bb8f9f7e7b7945bf0543f8/Interactive-1.0.1.tar.gz"
        sha256 "daf9cb705a07c697f8004e314a6d18d9e7af9391041ee32b30252c73239d1dd3"
    end
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/d7/d6/4e31a6f041f29ae314ff2079f3692bd4d3ac360529787aeb5f3b3d9dae5b/jira-3.6.0.tar.gz"
        sha256 "4c67497fe8dc2f60f1c4f7b33479f059c928bec3db9dcb5cd7b6a09b6ecc0942"
    end
    
    resource "keyring" do
        url "https://files.pythonhosted.org/packages/ae/6c/bd2cfc6c708ce7009bdb48c85bb8cad225f5638095ecc8f49f15e8e1f35e/keyring-24.3.1.tar.gz"
        sha256 "c3327b6ffafc0e8befbdb597cacdb4928ffe5c1212f7645f186e6d9957a898db"
    end
    
    resource "pandas" do
        url "https://files.pythonhosted.org/packages/99/f0/f99700ef327e51d291efdf4a6de29e685c4d198cbf8531541fc84d169e0e/pandas-1.3.5.tar.gz"
        sha256 "1e4285f5de1012de20ca46b188ccf33521bff61ba5c5ebd78b4fb28e5416a9f1"
    end
    
    resource "pendulum" do
        url "https://files.pythonhosted.org/packages/b8/fe/27c7438c6ac8b8f8bef3c6e571855602ee784b85d072efddfff0ceb1cd77/pendulum-3.0.0.tar.gz"
        sha256 "5d034998dea404ec31fae27af6b22cff1708f830a1ed7353be4d1019bb9f584e"
    end
    
    resource "prettytable" do
        url "https://files.pythonhosted.org/packages/19/d3/7cb826e085a254888d8afb4ae3f8d43859b13149ac8450b221120d4964c9/prettytable-3.10.0.tar.gz"
        sha256 "9665594d137fb08a1117518c25551e0ede1687197cf353a4fdc78d27e1073568"
    end
    
    resource "PyMySQL" do
        url "https://files.pythonhosted.org/packages/41/9d/ee68dee1c8821c839bb31e6e5f40e61035a5278f7c1307dde758f0c90452/PyMySQL-1.1.0.tar.gz"
        sha256 "4f13a7df8bf36a51e81dd9f3605fede45a4878fe02f9236349fd82a3f0612f96"
    end
    
    resource "requests" do
        url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
        sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
    
    resource "requests-aws-sign" do
        url "https://files.pythonhosted.org/packages/e8/14/27d8eed7ef7870525ed9888eaa273d6c564562367a1678a85496d6b4ccf2/requests_aws_sign-0.1.6.tar.gz"
        sha256 "17b2d21f7677df638cbe22d531bda59f7dbe36493f0fe0b8f5c19b36780b8111"
    end
    
    resource "rich" do
        url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
        sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/c8/1f/e026746e5885a83e1af99002ae63650b7c577af5c424d4c27edcf729ab44/setuptools-69.1.1.tar.gz"
        sha256 "5c0806c7d9af348e6dd3777b4f4dbb42c7ad85b190104837488eab9a7c945cf8"
    end
    
    resource "simple-term-menu" do
        url "https://files.pythonhosted.org/packages/a1/a0/7e78b93510886f6fb5b7146bd5cee03986fa5c2319644155c275e389c55a/simple-term-menu-1.6.4.tar.gz"
        sha256 "be9c5dbd8df12a404b14cd8e95d6fc02d58c60e2555f65ddde41777c487fb3b9"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/f8/77/e567bfc892a352ea2c6bc7e29830bed763b4a14681e7fefaf82974a9f775/slack_sdk-3.27.1.tar.gz"
        sha256 "85d86b34d807c26c8bb33c1569ec0985876f06ae4a2692afba765b7a5490d28c"
    end
    
    resource "sqlparse" do
        url "https://files.pythonhosted.org/packages/65/16/10f170ec641ed852611b6c9441b23d10b5702ab5288371feab3d36de2574/sqlparse-0.4.4.tar.gz"
        sha256 "d446183e84b8349fa3061f0fe7f06ca94ba65b426946ffebe6e3e8295332420c"
    end
    
    resource "tabulate" do
        url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
        sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
    end
    
    resource "textual" do
        url "https://files.pythonhosted.org/packages/bb/ce/b224ccc05260871da8df640e7cd8ca0a5e38721fddb6733650195402841e/textual-0.52.1.tar.gz"
        sha256 "4232e5c2b423ed7c63baaeb6030355e14e1de1b9df096c9655b68a1e60e4de5f"
    end
    
    resource "tqdm" do
        url "https://files.pythonhosted.org/packages/ea/85/3ce0f9f7d3f596e7ea57f4e5ce8c18cb44e4a9daa58ddb46ee0d13d6bff8/tqdm-4.66.2.tar.gz"
        sha256 "6cd52cdf0fef0e0f543299cfc96fec90d7b8a7e88745f411ec33eb44d5ed3531"
    end
    
    resource "typing" do
        url "https://files.pythonhosted.org/packages/05/d9/6eebe19d46bd05360c9a9aae822e67a80f9242aabbfc58b641b957546607/typing-3.7.4.3.tar.gz"
        sha256 "1187fb9c82fd670d10aa07bbb6cfcfe4bdda42d6fab8d5134f04e8c4d0b71cc9"
    end
    
    resource "yaspin" do
        url "https://files.pythonhosted.org/packages/0e/6e/faf922412b0538663bba81cf1e741fa9856aac7b4fd80d0790521b4bbe7d/yaspin-3.0.1.tar.gz"
        sha256 "9c04aa69cce9be83e1ea3134a6712e749e6c0c9cd02599023713e6befd7bf369"
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