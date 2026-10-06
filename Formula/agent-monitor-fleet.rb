class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.352.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "11798b15eef81d911f9803699da85f2aa5cae6148dcdfa17da03b3cb226fedb5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3d5aaa1335752adf4c98d1e8a9928c36d842f29f355250087af95eb223841449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "318d1192269aa41c72ab2c87016c45cce44cba4356224500a82e2c6e61606e60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1595e0484f9fa970aa28bff1cf1ee89fbf1e66a6813744644e6475dba74e46bc"
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
