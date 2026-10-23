class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.410.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3c690562ded03420362a00e69a75340369bad5cfbc2131d1fb88c4279e5f3ef0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6416066821b72550f237aa3bf236b5e3422f78c93d5a8d904615f19fb5cc77fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da628e5f94fd06560a81eb48b20a01b12775dbfbe10c0a308fbbce04bcdde2df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c807ed0ec713818840c06d1f72c548a9d4258cdd20715a9884af925f1083652d"
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
