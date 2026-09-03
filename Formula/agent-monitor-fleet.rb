class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.133.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "25e25868a5e102bd3ec021c62902b6738840e4ee85aa970c0d6c8ea28081b947"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e7c5f9229e725b143425c0a529d8019f2d9652665d5529db651471881f99e8d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dcfc6940b6cabac60a4bc760381ba22b869ef84def23e5cf6d5da8e058574843"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.133.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2885cbb54d289e936db80946afe2bf9c9afee765dc07eb3546f58c942500699"
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
