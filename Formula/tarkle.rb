class Tarkle < Formula
  desc "Command line for the Tarkle API"
  homepage "https://tarkle.com"
  url "https://registry.npmjs.org/@tarkle/cli/-/cli-0.2.0.tgz"
  sha256 "922ce05d1ee53a8a5840df86763fdf9f9e072a3a02f551f5bdb4b2b13b79a276"
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
