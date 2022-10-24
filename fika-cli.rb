require "language/node"
class FikaCli < Formula
  desc "A high-level git extension that helps team-shared development workflow."
  homepage "https://fikadev.com/"
  url "https://registry.npmjs.org/fika-cli/-/fika-cli-0.4.35.tgz"
  version "v0.4.35"
  sha256 "6e61f6c7e0bf4cd307e860a2fb4a0ef0a2ec61cd3543d2c5d53364da67beb983"
  license "LGPL-3.0"
  livecheck do
    url :stable
  end
  depends_on "node"
  depends_on "gh"
  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
  test do
    raise "Test not implemented."
  end
end
