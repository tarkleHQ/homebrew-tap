class Tarkle < Formula
  desc "Command line for the Tarkle API"
  homepage "https://tarkle.com"
  url "https://registry.npmjs.org/@tarkle/cli/-/cli-0.1.0.tgz"
  sha256 "2d820d5b2be8a21b177108faa69efa6c902b35b372c2f38c0cb4fc38bc3d5125"
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
