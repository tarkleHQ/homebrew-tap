class Tarkle < Formula
  desc "Command line for the Tarkle API"
  homepage "https://tarkle.com"
  url "https://registry.npmjs.org/@tarkle/cli/-/cli-0.3.0.tgz"
  sha256 "eb1243d95455e18274001801f16ee8e6bd873a6676c009c9f086f4dc52802eed"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "command line for the Tarkle API", shell_output("#{bin}/tarkle help")
  end
end
