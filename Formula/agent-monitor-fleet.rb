class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.260.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "28c0b0f58c67dfc0d60bdf8e202a6eb348373542ff7c748948b3a8857949deeb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "186e65c348cac70f40617bb6afb2682130e90cf153c30a0ecc7790d842adcbe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00672f8589cb1894fa43ddaffd03d8fca3a139fc36f83abb04ed3334332be0a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccbaca02d107336f21f49770d7c4b029937166078c4a98f36faef2c0935b262c"
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
