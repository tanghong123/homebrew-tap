class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.356.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "49d22a626d97c2b4eb0707fcf93936c29fbd59049a6418ed61c2070171e90ff7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9dca756eb440c3108e179aaecd28ce0f42a04d722206f17fb5e4eea9bc5aeb7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee96cacfa06b661f71eec6dc0c99947e917bfd42a1ca97af6955ee425eeebf55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.356.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02d2fe37fe856b6dfffe4c1d770bd8a34cabe0de3bb71dfe0dcd9d4c57402d28"
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
