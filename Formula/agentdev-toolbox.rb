class AgentdevToolbox < Formula
  desc "Scripts a Mac for coding agents is set up from: bootstrap, power, cleanup"
  homepage "https://github.com/tanghong123/homebrew-tap"
  url "https://github.com/tanghong123/homebrew-tap/releases/download/agentdev-toolbox-0.7.11/agentdev-toolbox-0.7.11.tar.gz"
  sha256 "3b62c0a33b528ccebef69cc5f515e87474b3e69a6c57692ac6a943c1a19e8d11"

  depends_on :macos

  # The tree as the repo lays it out: each component runs, and installs, from where it sits, so nothing goes on
  # PATH here. An installer copies what a box runs (~/.local/bin, launchd jobs), and its --status compares that
  # copy with this one: after an upgrade, a copy to refresh shows there.
  def install
    libexec.install Dir["*"]
  end

  test do
    assert_equal "#{version}\n", (libexec/"VERSION").read
    system "/bin/bash", "-n", libexec/"bootstrap/mac-bootstrap.sh"
  end
end
