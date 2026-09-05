class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.195.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6498f7b2e05f7de4fedb15350f9579fc78fbd7b629d65520c6124a3cf1853a07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7eda4fcc08421fa0cb124b2ec6e07cd952e665174efe612c51dd659fac234b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f0c5a208eb240f2e72fc211d70c43b7b1538781d00d37b8d9cc99e91bb459fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.195.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c0c9d1356ab21691281cc320f71f5299772677c23dac6c4259852e2d64bcf03"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
