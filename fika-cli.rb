require "language/node"
class FikaCli < Formula
  desc "A high-level git extension that helps team-shared development workflow."
  homepage "https://fikadev.com/"
  url "https://registry.npmjs.org/fika-cli/-/fika-cli-0.4.31.tgz"
  sha256 "eb981b6f8b7c95d0c2f2f13bb71cf3120f562226fac23f3bb2ecedac78544f17"
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
