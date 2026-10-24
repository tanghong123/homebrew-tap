class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.415.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7c05909dfdbd9ef93d1376bb6aefd9f88a4d7c130425c8620030a96469674159"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "be0bacbd95e99f155663c88fa0c7a882aff9ef41d7c726b2fda8a2e982ea9bca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99865d61d751f28fec2ba73e26d2b9e863a4624ba2ea21d5fc929d6bf14739a1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.415.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c75eab4811667306d9f12c3920941290f9bbcd1301665adffac55e2d217810a0"
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
