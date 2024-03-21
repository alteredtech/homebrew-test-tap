
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

    
    resource "appdirs" do
        url "https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz"
        sha256 "7d5d0167b2b1ba821647616af46a749d1c653740dd0d2415100fe26e27afdf41"
    end
    
    resource "attrs" do
        url "https://files.pythonhosted.org/packages/e3/fc/f800d51204003fa8ae392c4e8278f256206e7a919b708eef054f5f4b650d/attrs-23.2.0.tar.gz"
        sha256 "935dc3b529c262f6cf76e50877d35a4bd3c1de194fd41f47a2b7ae8f19971f30"
    end
    
    resource "bcrypt" do
        url "https://files.pythonhosted.org/packages/72/07/6a6f2047a9dc9d012b7b977e4041d37d078b76b44b7ee4daf331c1e6fb35/bcrypt-4.1.2.tar.gz"
        sha256 "33313a1200a3ae90b75587ceac502b048b840fc69e7f7a0905b5f87fac7a1258"
    end
    
    resource "biplist" do
        url "https://files.pythonhosted.org/packages/3e/56/2db170a498c9c6545cda16e93c2f2ef9302da44802787b45a8a520d01bdb/biplist-1.0.3.tar.gz"
        sha256 "4c0549764c5fe50b28042ec21aa2e14fe1a2224e239a1dae77d9e7f3932aa4c6"
    end
    
    resource "boto3" do
        url "https://files.pythonhosted.org/packages/c4/ca/c129a45394d79ff628fdfe79695ec6e63e75a0add9061190805cff661e08/boto3-1.34.66.tar.gz"
        sha256 "b1d6be3d5833e56198dc635ff4b428b93e5a2a2bd9bc4d94581a572a1ce97cfe"
    end
    
    resource "botocore" do
        url "https://files.pythonhosted.org/packages/d5/c2/b76a9383c48c726feab9c352df5cf55aea4f34d91d07831582c220fdbe67/botocore-1.34.66.tar.gz"
        sha256 "fd7d8742007c220f897cb126b8916ca0cf3724a739d4d716aa5385d7f9d8aeb1"
    end
    
    resource "certifi" do
        url "https://files.pythonhosted.org/packages/71/da/e94e26401b62acd6d91df2b52954aceb7f561743aa5ccc32152886c76c96/certifi-2024.2.2.tar.gz"
        sha256 "0569859f95fc761b18b45ef421b1290a0f65f147e92a1e5eb3e635f9a5e4e66f"
    end
    
    resource "cffi" do
        url "https://files.pythonhosted.org/packages/68/ce/95b0bae7968c65473e1298efb042e10cafc7bafc14d9e4f154008241c91d/cffi-1.16.0.tar.gz"
        sha256 "bcb3ef43e58665bbda2fb198698fcae6776483e0c4a631aa5647806c25e02cc0"
    end
    
    resource "charset-normalizer" do
        url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
        sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
    end
    
    resource "configparser" do
        url "https://files.pythonhosted.org/packages/82/97/930be4777f6b08fc7c248d70c2ea8dfb6a75ab4409f89abc47d6cab37d39/configparser-6.0.1.tar.gz"
        sha256 "db45513e971e509496b150be31bd67b0e14ab20b78a383b677e4b158e2c682d8"
    end
    
    resource "cryptography" do
        url "https://files.pythonhosted.org/packages/13/9e/a55763a32d340d7b06d045753c186b690e7d88780cafce5f88cb931536be/cryptography-42.0.5.tar.gz"
        sha256 "6fe07eec95dfd477eb9530aef5bead34fec819b3aaf6c5bd6d20565da607bfe1"
    end
    
    resource "DateTime" do
        url "https://files.pythonhosted.org/packages/7e/86/2bd8fa8b63c91008c4f26fb2c7b4d661abf5a151db474e298e1c572caa57/DateTime-5.4.tar.gz"
        sha256 "568ea851d40773d846c0b5efe260aecb717c2b933c052a3c13b712809c16b57d"
    end
    
    resource "defusedxml" do
        url "https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz"
        sha256 "1bb3032db185915b62d7c6209c5a8792be6a32ab2fedacc84e01b52c51aa3e69"
    end
    
    resource "dropbox" do
        url "https://files.pythonhosted.org/packages/8d/0f/2059c5ef8669e625a533661a2054a82241696954df6662aeee51a34b1022/dropbox-11.36.2.tar.gz"
        sha256 "d48d3d16d486c78b11c14a1c4a28a2611fbf5a0d0a358b861bfd9482e603c500"
    end
    
    resource "idna" do
        url "https://files.pythonhosted.org/packages/bf/3f/ea4b9117521a1e9c50344b909be7886dd00a519552724809bb1f486986c2/idna-3.6.tar.gz"
        sha256 "9ecdbbd083b06798ae1e86adcbfe8ab1479cf864e4ee30fe4e46a003d12491ca"
    end
    
    resource "importlib_metadata" do
        url "https://files.pythonhosted.org/packages/64/dd/7467b3be0e863401438a407411f78c33376748aff39ec0b8f45f6739c86c/importlib_metadata-7.0.2.tar.gz"
        sha256 "198f568f3230878cb1b44fbd7975f87906c22336dba2e4a7f05278c281fbd792"
    end
    
    resource "inquirerpy" do
        url "https://files.pythonhosted.org/packages/64/73/7570847b9da026e07053da3bbe2ac7ea6cde6bb2cbd3c7a5a950fa0ae40b/InquirerPy-0.3.4.tar.gz"
        sha256 "89d2ada0111f337483cb41ae31073108b2ec1e618a49d7110b0d7ade89fc197e"
    end
    
    resource "Interactive" do
        url "https://files.pythonhosted.org/packages/ef/f7/4a60ac46854eeaab30916ce6df80ff9d2f7a40bb8f9f7e7b7945bf0543f8/Interactive-1.0.1.tar.gz"
        sha256 "daf9cb705a07c697f8004e314a6d18d9e7af9391041ee32b30252c73239d1dd3"
    end
    
    resource "isodate" do
        url "https://files.pythonhosted.org/packages/db/7a/c0a56c7d56c7fa723988f122fa1f1ccf8c5c4ccc48efad0d214b49e5b1af/isodate-0.6.1.tar.gz"
        sha256 "48c5881de7e8b0a0d648cb024c8062dc84e7b840ed81e864c7614fd3c127bde9"
    end
    
    resource "jaraco.classes" do
        url "https://files.pythonhosted.org/packages/a5/8a/ed955184b2ef9c1eef3aa800557051c7354e5f40a9efc9a46e38c3e6d237/jaraco.classes-3.3.1.tar.gz"
        sha256 "cb28a5ebda8bc47d8c8015307d93163464f9f2b91ab4006e09ff0ce07e8bfb30"
    end
    
    resource "jira" do
        url "https://files.pythonhosted.org/packages/d7/d6/4e31a6f041f29ae314ff2079f3692bd4d3ac360529787aeb5f3b3d9dae5b/jira-3.6.0.tar.gz"
        sha256 "4c67497fe8dc2f60f1c4f7b33479f059c928bec3db9dcb5cd7b6a09b6ecc0942"
    end
    
    resource "jmespath" do
        url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
        sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end
    
    resource "keyring" do
        url "https://files.pythonhosted.org/packages/ae/6c/bd2cfc6c708ce7009bdb48c85bb8cad225f5638095ecc8f49f15e8e1f35e/keyring-24.3.1.tar.gz"
        sha256 "c3327b6ffafc0e8befbdb597cacdb4928ffe5c1212f7645f186e6d9957a898db"
    end
    
    resource "linkify-it-py" do
        url "https://files.pythonhosted.org/packages/2a/ae/bb56c6828e4797ba5a4821eec7c43b8bf40f69cda4d4f5f8c8a2810ec96a/linkify-it-py-2.0.3.tar.gz"
        sha256 "68cda27e162e9215c17d786649d1da0021a451bdc436ef9e0fa0ba5234b9b048"
    end
    
    resource "lxml" do
        url "https://files.pythonhosted.org/packages/2b/b4/bbccb250adbee490553b6a52712c46c20ea1ba533a643f1424b27ffc6845/lxml-5.1.0.tar.gz"
        sha256 "3eea6ed6e6c918e468e693c41ef07f3c3acc310b70ddd9cc72d9ef84bc9564ca"
    end
    
    resource "Mako" do
        url "https://files.pythonhosted.org/packages/d4/1b/71434d9fa9be1ac1bc6fb5f54b9d41233be2969f16be759766208f49f072/Mako-1.3.2.tar.gz"
        sha256 "2a0c8ad7f6274271b3bb7467dd37cf9cc6dab4bc19cb69a4ef10669402de698e"
    end
    
    resource "Markdown" do
        url "https://files.pythonhosted.org/packages/22/02/4785861427848cc11e452cc62bb541006a1087cf04a1de83aedd5530b948/Markdown-3.6.tar.gz"
        sha256 "ed4f41f6daecbeeb96e576ce414c41d2d876daa9a16cb35fa8ed8c2ddfad0224"
    end
    
    resource "markdown-it-py" do
        url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
        sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
    end
    
    resource "MarkupSafe" do
        url "https://files.pythonhosted.org/packages/87/5b/aae44c6655f3801e81aa3eef09dbbf012431987ba564d7231722f68df02d/MarkupSafe-2.1.5.tar.gz"
        sha256 "d283d37a890ba4c1ae73ffadf8046435c76e7bc2247bbb63c00bd1a709c6544b"
    end
    
    resource "mdit-py-plugins" do
        url "https://files.pythonhosted.org/packages/b4/db/61960d68d5c39ff0dd48cb799a39ae4e297f6e9b96bf2f8da29d897fba0c/mdit_py_plugins-0.4.0.tar.gz"
        sha256 "d8ab27e9aed6c38aa716819fedfde15ca275715955f8a185a8e1cf90fb1d2c1b"
    end
    
    resource "mdurl" do
        url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
        sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
    end
    
    resource "more-itertools" do
        url "https://files.pythonhosted.org/packages/df/ad/7905a7fd46ffb61d976133a4f47799388209e73cbc8c1253593335da88b4/more-itertools-10.2.0.tar.gz"
        sha256 "8fccb480c43d3e99a00087634c06dd02b0d50fbf088b380de5a41a015ec239e1"
    end
    
    resource "numpy" do
        url "https://files.pythonhosted.org/packages/65/6e/09db70a523a96d25e115e71cc56a6f9031e7b8cd166c1ac8438307c14058/numpy-1.26.4.tar.gz"
        sha256 "2a02aba9ed12e4ac4eb3ea9421c420301a0c6460d9830d74a9df87efa4912010"
    end
    
    resource "oauthlib" do
        url "https://files.pythonhosted.org/packages/6d/fa/fbf4001037904031639e6bfbfc02badfc7e12f137a8afa254df6c4c8a670/oauthlib-3.2.2.tar.gz"
        sha256 "9859c40929662bec5d64f34d01c99e093149682a3f38915dc0655d5a633dd918"
    end
    
    resource "packaging" do
        url "https://files.pythonhosted.org/packages/ee/b5/b43a27ac7472e1818c4bafd44430e69605baefe1f34440593e0332ec8b4d/packaging-24.0.tar.gz"
        sha256 "eb82c5e3e56209074766e6885bb04b8c38a0c015d0a30036ebe7ece34c9989e9"
    end
    
    resource "pandas" do
        url "https://files.pythonhosted.org/packages/3d/59/2afa81b9fb300c90531803c0fd43ff4548074fa3e8d0f747ef63b3b5e77a/pandas-2.2.1.tar.gz"
        sha256 "0ab90f87093c13f3e8fa45b48ba9f39181046e8f3317d3aadb2fffbb1b978572"
    end
    
    resource "paramiko" do
        url "https://files.pythonhosted.org/packages/cc/af/11996c4df4f9caff87997ad2d3fd8825078c277d6a928446d2b6cf249889/paramiko-3.4.0.tar.gz"
        sha256 "aac08f26a31dc4dffd92821527d1682d99d52f9ef6851968114a8728f3c274d3"
    end
    
    resource "pdfgen" do
        url "https://files.pythonhosted.org/packages/12/66/4a644dbb574b1cf3f553d3b542f626e5e23012585654a678ff9034033b55/pdfgen-1.0.5.tar.gz"
        sha256 "c11fd69714a4d6463675e28473d6e5a43467fa1ea8769bfc1213f6a07fccf9d2"
    end
    
    resource "pdoc3" do
        url "https://files.pythonhosted.org/packages/95/be/69267c988fb7236cd60c452a4e7fb9a7991729476db490b634a07e7dfcdf/pdoc3-0.10.0.tar.gz"
        sha256 "5f22e7bcb969006738e1aa4219c75a32f34c2d62d46dc9d2fb2d3e0b0287e4b7"
    end
    
    resource "pendulum" do
        url "https://files.pythonhosted.org/packages/b8/fe/27c7438c6ac8b8f8bef3c6e571855602ee784b85d072efddfff0ceb1cd77/pendulum-3.0.0.tar.gz"
        sha256 "5d034998dea404ec31fae27af6b22cff1708f830a1ed7353be4d1019bb9f584e"
    end
    
    resource "pfzy" do
        url "https://files.pythonhosted.org/packages/d9/5a/32b50c077c86bfccc7bed4881c5a2b823518f5450a30e639db5d3711952e/pfzy-0.3.4.tar.gz"
        sha256 "717ea765dd10b63618e7298b2d98efd819e0b30cd5905c9707223dceeb94b3f1"
    end
    
    resource "pillow" do
        url "https://files.pythonhosted.org/packages/f8/3e/32cbd0129a28686621434cbf17bb64bf1458bfb838f1f668262fefce145c/pillow-10.2.0.tar.gz"
        sha256 "e87f0b2c78157e12d7686b27d63c070fd65d994e8ddae6f328e0dcf4a0cd007e"
    end
    
    resource "platformdirs" do
        url "https://files.pythonhosted.org/packages/96/dc/c1d911bf5bb0fdc58cc05010e9f3efe3b67970cef779ba7fbc3183b987a8/platformdirs-4.2.0.tar.gz"
        sha256 "ef0cc731df711022c174543cb70a9b5bd22e5a9337c8624ef2c2ceb8ddad8768"
    end
    
    resource "ply" do
        url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
        sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
    end
    
    resource "prettytable" do
        url "https://files.pythonhosted.org/packages/19/d3/7cb826e085a254888d8afb4ae3f8d43859b13149ac8450b221120d4964c9/prettytable-3.10.0.tar.gz"
        sha256 "9665594d137fb08a1117518c25551e0ede1687197cf353a4fdc78d27e1073568"
    end
    
    resource "primePy" do
        url "https://files.pythonhosted.org/packages/35/77/0cfa1b4697cfb5336f3a96e8bc73327f64610be3a64c97275f1801afb395/primePy-1.3.tar.gz"
        sha256 "25fd7e25344b0789a5984c75d89f054fcf1f180bef20c998e4befbac92de4669"
    end
    
    resource "prompt-toolkit" do
        url "https://files.pythonhosted.org/packages/cc/c6/25b6a3d5cd295304de1e32c9edbcf319a52e965b339629d37d42bb7126ca/prompt_toolkit-3.0.43.tar.gz"
        sha256 "3527b7af26106cbc65a040bcc84839a3566ec1b051bb0bfe953631e704b0ff7d"
    end
    
    resource "pycparser" do
        url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
        sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
    end
    
    resource "pyee" do
        url "https://files.pythonhosted.org/packages/e6/88/a917aaa0da1915292022745184275e095516b490a85d89fc48fd4de1c01a/pyee-8.2.2.tar.gz"
        sha256 "5c7e60f8df95710dbe17550e16ce0153f83990c00ef744841b43f371ed53ebea"
    end
    
    resource "Pygments" do
        url "https://files.pythonhosted.org/packages/55/59/8bccf4157baf25e4aa5a0bb7fa3ba8600907de105ebc22b0c78cfbf6f565/pygments-2.17.2.tar.gz"
        sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
    end
    
    resource "PyJWT" do
        url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
        sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
    end
    
    resource "PyMySQL" do
        url "https://files.pythonhosted.org/packages/41/9d/ee68dee1c8821c839bb31e6e5f40e61035a5278f7c1307dde758f0c90452/PyMySQL-1.1.0.tar.gz"
        sha256 "4f13a7df8bf36a51e81dd9f3605fede45a4878fe02f9236349fd82a3f0612f96"
    end
    
    resource "PyNaCl" do
        url "https://files.pythonhosted.org/packages/a7/22/27582568be639dfe22ddb3902225f91f2f17ceff88ce80e4db396c8986da/PyNaCl-1.5.0.tar.gz"
        sha256 "8ac7448f09ab85811607bdd21ec2464495ac8b7c66d146bf545b0f08fb9220ba"
    end
    
    resource "PyPDF2" do
        url "https://files.pythonhosted.org/packages/0b/79/abdc2edda52463490c860232149242b693cbf6179d9863b0c7862cf9fd73/PyPDF2-1.28.6.tar.gz"
        sha256 "c0840835d18357b077da05bdad1423f5e29419f318135b6a6542895930dc4905"
    end
    
    resource "pyppeteer" do
        url "https://files.pythonhosted.org/packages/d9/bd/aee9896b82f5c74612586743a006fbdc02515277ffb62409b57e68934f6a/pyppeteer-0.2.6.tar.gz"
        sha256 "4621bb890e54f43dce84f5139ea4d484a62886be1903c2fcb393af607943538f"
    end
    
    resource "python-dateutil" do
        url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
        sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
    end
    
    resource "pytz" do
        url "https://files.pythonhosted.org/packages/90/26/9f1f00a5d021fff16dee3de13d43e5e978f3d58928e129c3a62cf7eb9738/pytz-2024.1.tar.gz"
        sha256 "2a29735ea9c18baf14b448846bde5a48030ed267578472d8955cd0e7443a9812"
    end
    
    resource "requests" do
        url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
        sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
    
    resource "requests-aws-sign" do
        url "https://files.pythonhosted.org/packages/e8/14/27d8eed7ef7870525ed9888eaa273d6c564562367a1678a85496d6b4ccf2/requests_aws_sign-0.1.6.tar.gz"
        sha256 "17b2d21f7677df638cbe22d531bda59f7dbe36493f0fe0b8f5c19b36780b8111"
    end
    
    resource "requests-file" do
        url "https://files.pythonhosted.org/packages/2b/69/ba1b5f52f96cde4f2d8eca74a0aa2c11a66b2fe58d0fb63b2e46edce6ed3/requests-file-2.0.0.tar.gz"
        sha256 "20c5931629c558fda566cacc10cfe2cd502433e628f568c34c80d96a0cc95972"
    end
    
    resource "requests-oauthlib" do
        url "https://files.pythonhosted.org/packages/d5/5d/fd68baf0876774835068b557717932c44c6be42ee847bcc210bf389d4189/requests-oauthlib-1.4.0.tar.gz"
        sha256 "acee623221e4a39abcbb919312c8ff04bd44e7e417087fb4bd5e2a2f53d5e79a"
    end
    
    resource "requests-toolbelt" do
        url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
        sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
    end
    
    resource "rich" do
        url "https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz"
        sha256 "9be308cb1fe2f1f57d67ce99e95af38a1e2bc71ad9813b0e247cf7ffbcc3a432"
    end
    
    resource "s3transfer" do
        url "https://files.pythonhosted.org/packages/83/bc/fb0c1f76517e3380eb142af8a9d6b969c150cfca1324cea7d965d8c66571/s3transfer-0.10.1.tar.gz"
        sha256 "5683916b4c724f799e600f41dd9e10a9ff19871bf87623cc8f491cb4f5fa0a19"
    end
    
    resource "setuptools" do
        url "https://files.pythonhosted.org/packages/4d/5b/dc575711b6b8f2f866131a40d053e30e962e633b332acf7cd2c24843d83d/setuptools-69.2.0.tar.gz"
        sha256 "0ff4183f8f42cd8fa3acea16c45205521a4ef28f73c6391d8a25e92893134f2e"
    end
    
    resource "simple-salesforce" do
        url "https://files.pythonhosted.org/packages/8c/c3/f979fed15f11285b1cd6d22929d7259ad15eef5334e5594fab443135ba5b/simple-salesforce-1.12.5.tar.gz"
        sha256 "ef65f72438e3b215619f6835d3d4356e147adf3a7ece6896d239127dd6aefcd1"
    end
    
    resource "simple-term-menu" do
        url "https://files.pythonhosted.org/packages/a1/a0/7e78b93510886f6fb5b7146bd5cee03986fa5c2319644155c275e389c55a/simple-term-menu-1.6.4.tar.gz"
        sha256 "be9c5dbd8df12a404b14cd8e95d6fc02d58c60e2555f65ddde41777c487fb3b9"
    end
    
    resource "six" do
        url "https://files.pythonhosted.org/packages/71/39/171f1c67cd00715f190ba0b100d606d440a28c93c7714febeca8b79af85e/six-1.16.0.tar.gz"
        sha256 "1e61c37477a1626458e36f7b1d82aa5c9b094fa4802892072e49de9c60c4c926"
    end
    
    resource "slack_sdk" do
        url "https://files.pythonhosted.org/packages/f8/77/e567bfc892a352ea2c6bc7e29830bed763b4a14681e7fefaf82974a9f775/slack_sdk-3.27.1.tar.gz"
        sha256 "85d86b34d807c26c8bb33c1569ec0985876f06ae4a2692afba765b7a5490d28c"
    end
    
    resource "sqlparse" do
        url "https://files.pythonhosted.org/packages/65/16/10f170ec641ed852611b6c9441b23d10b5702ab5288371feab3d36de2574/sqlparse-0.4.4.tar.gz"
        sha256 "d446183e84b8349fa3061f0fe7f06ca94ba65b426946ffebe6e3e8295332420c"
    end
    
    resource "stone" do
        url "https://files.pythonhosted.org/packages/61/4f/b5a9138e86b13e00e2439c62fb4d045d595e0e260454977741f62448c624/stone-3.2.1.tar.gz"
        sha256 "9bc78b40143b4ef33bf569e515408c2996ffebefbb1a897616ebe8aa6f2d7e75"
    end
    
    resource "syncasync" do
        url "https://files.pythonhosted.org/packages/c6/76/b65cc583347fd16a9a01f967a325d119a0a73b7a3487364d80b7dc8c9be2/syncasync-20180812.tar.gz"
        sha256 "737cd0193b5e0659b1565122069b5178001210f221f4641eca0d94c58c8eb4d2"
    end
    
    resource "tabulate" do
        url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
        sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
    end
    
    resource "termcolor" do
        url "https://files.pythonhosted.org/packages/10/56/d7d66a84f96d804155f6ff2873d065368b25a07222a6fd51c4f24ef6d764/termcolor-2.4.0.tar.gz"
        sha256 "aab9e56047c8ac41ed798fa36d892a37aca6b3e9159f3e0c24bc64a9b3ac7b7a"
    end
    
    resource "textual" do
        url "https://files.pythonhosted.org/packages/59/f4/3df30a59ae3fe915c4311a93646fc184be19999e6e5d828831d4cfe53851/textual-0.53.1.tar.gz"
        sha256 "23ba673be7974819ded35ea88d28df7117987e53d58f15b2cc890ac2ecf56401"
    end
    
    resource "time-machine" do
        url "https://files.pythonhosted.org/packages/83/f6/6f87e0373f0ed8c272cee29d27f62d86133b770e6d06a2b0f13b3489411d/time-machine-2.14.0.tar.gz"
        sha256 "b1076afb7825122a89a7be157d3a02f69f07d6fa0bacfaec463c71ac0488bd58"
    end
    
    resource "tqdm" do
        url "https://files.pythonhosted.org/packages/ea/85/3ce0f9f7d3f596e7ea57f4e5ce8c18cb44e4a9daa58ddb46ee0d13d6bff8/tqdm-4.66.2.tar.gz"
        sha256 "6cd52cdf0fef0e0f543299cfc96fec90d7b8a7e88745f411ec33eb44d5ed3531"
    end
    
    resource "typing" do
        url "https://files.pythonhosted.org/packages/05/d9/6eebe19d46bd05360c9a9aae822e67a80f9242aabbfc58b641b957546607/typing-3.7.4.3.tar.gz"
        sha256 "1187fb9c82fd670d10aa07bbb6cfcfe4bdda42d6fab8d5134f04e8c4d0b71cc9"
    end
    
    resource "typing_extensions" do
        url "https://files.pythonhosted.org/packages/16/3a/0d26ce356c7465a19c9ea8814b960f8a36c3b0d07c323176620b7b483e44/typing_extensions-4.10.0.tar.gz"
        sha256 "b0abd7c89e8fb96f98db18d86106ff1d90ab692004eb746cf6eda2682f91b3cb"
    end
    
    resource "tzdata" do
        url "https://files.pythonhosted.org/packages/74/5b/e025d02cb3b66b7b76093404392d4b44343c69101cc85f4d180dd5784717/tzdata-2024.1.tar.gz"
        sha256 "2674120f8d891909751c38abcdfd386ac0a5a1127954fbc332af6b5ceae07efd"
    end
    
    resource "uc-micro-py" do
        url "https://files.pythonhosted.org/packages/91/7a/146a99696aee0609e3712f2b44c6274566bc368dfe8375191278045186b8/uc-micro-py-1.0.3.tar.gz"
        sha256 "d321b92cff673ec58027c04015fcaa8bb1e005478643ff4a500882eaab88c48a"
    end
    
    resource "urllib3" do
        url "https://files.pythonhosted.org/packages/0c/39/64487bf07df2ed854cc06078c27c0d0abc59bd27b32232876e403c333a08/urllib3-1.26.18.tar.gz"
        sha256 "f8ecc1bba5667413457c529ab955bf8c67b45db799d159066261719e328580a0"
    end
    
    resource "wcwidth" do
        url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
        sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
    end
    
    resource "websockets" do
        url "https://files.pythonhosted.org/packages/0d/bd/5262054455ab2067e51de331bfbc53a1dfa9071af7c424cf7c0793c4349a/websockets-9.1.tar.gz"
        sha256 "276d2339ebf0df4f45df453923ebd2270b87900eda5dfd4a6b0cfa15f82111c3"
    end
    
    resource "yaspin" do
        url "https://files.pythonhosted.org/packages/0e/6e/faf922412b0538663bba81cf1e741fa9856aac7b4fd80d0790521b4bbe7d/yaspin-3.0.1.tar.gz"
        sha256 "9c04aa69cce9be83e1ea3134a6712e749e6c0c9cd02599023713e6befd7bf369"
    end
    
    resource "zeep" do
        url "https://files.pythonhosted.org/packages/fd/a4/8fa2337f1807fd9e671b85980b2c90052d524edf9d39b515aed4c5874c38/zeep-4.2.1.tar.gz"
        sha256 "72093acfdb1d8360ed400869b73fbf1882b95c4287f798084c42ee0c1ff0e425"
    end
    
    resource "zipp" do
        url "https://files.pythonhosted.org/packages/3e/ef/65da662da6f9991e87f058bc90b91a935ae655a16ae5514660d6460d1298/zipp-3.18.1.tar.gz"
        sha256 "2884ed22e7d8961de1c9a05142eb69a247f120291bc0206a00a7642f09b5b715"
    end
    
    resource "zope.interface" do
        url "https://files.pythonhosted.org/packages/cd/37/1b003190ba7148226a8212d98ff8074e212fef30c82e616bdb818ae1f838/zope.interface-6.2.tar.gz"
        sha256 "3b6c62813c63c543a06394a636978b22dffa8c5410affc9331ce6cdb5bfa8565"
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