class Tarkle < Formula
  desc "Command line for the Tarkle API"
  homepage "https://tarkle.com"
  url "https://registry.npmjs.org/@tarkle/cli/-/cli-0.1.1.tgz"
  sha256 "4bfe5d106f302440a99de7393074fdf9b20ffcffefd962af5f83dab1823df62e"
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
