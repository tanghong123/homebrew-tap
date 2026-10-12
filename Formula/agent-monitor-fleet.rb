class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.373.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "141b23b24475e9dc236b03c89dd79ce6331a08bce0cdfe89dbb76b9f451beb5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dd9d26007d4901308f235f4b016e6c54478e38252ee5a652ca48ec3f095f51aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f72edfd0577d6fdd136439829a842bdeebac9cacd844d9e34c218f0ee4de352"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.373.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26c772c9d51c5a695f86f13ab62b0202d7099955320d7f8fc4e1336f003cdbaa"
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
