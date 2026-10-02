class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.342.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e617de103ddae41e679cf42bd504b8f2682a70334aa45df1059745849f81a4ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bb1157a0146758a149d51fbf86801393c033515de6e7436ad5746fcc45f2d569"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2700cc024349633e5f85ee6c86b7823823c410379b335599b7fdfe1482c287ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.342.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cdebfac2a20e354cabecc6c5a517aa10f3b0b831ed103a20adb354166011b8f"
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
