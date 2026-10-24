class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.413.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a11adbbe0ef624a4f9f49bcde7b280167f5b2c02d72c32a3e237a832a8f1a976"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "38f0fac796b754d354a9ffc8864ac089c82b44f517fb181ddaa458f04daf70e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d910483d70c8329f0cccf9726300e7d368ac14a9051ae293ce4a1da13c91740f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.413.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "52edbb1cf3e7ad33061a87099c604cce1c097e5ff95169975c3152798752d76a"
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
