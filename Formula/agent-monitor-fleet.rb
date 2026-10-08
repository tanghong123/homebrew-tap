class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.363.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f54df8885c96b6c3b3cf0040e5f41482ae70085d1b82849a40f93a6b56856254"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5e02ca3138562623f96663fcaec63819a46d4e5a1a055299130acd0655d8610a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7df3a0c8ef99bd1c71546c823d1591ba087cec9b22bb85ee48cc7c4492de6c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.363.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bccb003f920e366e812cc221fb6cec1027881bdb3146c2702c5e856649adfab0"
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
