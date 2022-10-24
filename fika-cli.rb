# frozen_string_literal: true

require "language/node"

# FikaCli Class
class FikaCli < Formula
  desc "High-level git extension that helps team-shared development workflow"
  homepage "https://fikadev.com/"
  url "https://registry.npmjs.org/fika-cli/-/fika-cli-0.4.35.tgz"
  version "0.4.35"
  sha256 "6e61f6c7e0bf4cd307e860a2fb4a0ef0a2ec61cd3543d2c5d53364da67beb983"
  license "GPL-3.0-only"

  livecheck do
    url :stable
  end

  depends_on "gh"
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
