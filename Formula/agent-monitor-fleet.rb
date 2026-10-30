class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.449.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6bdbab8370aad45c563f09dc267df78c1beb1f05c6c42aa8164b4f513bd0a8cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7f4c3628f9d483027e6b52c9f1fe9d88800281d63bed1e3802728ac71ca95551"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0901c9c737038bb7994844b051ce4c5e3af8d62b55d80ad6cc748077e9d2388"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0696f3e338427197db07d88cd5042c2b7630c833c0d479f09f47086088aada5d"
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
