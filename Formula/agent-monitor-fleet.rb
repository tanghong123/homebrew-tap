class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.378.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "78c65f9ae4c9bd5c4f4ebbf8bad098dc8abd5a2ed0e11d60cb9a2cf0f536b522"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f84f0c7b8875961a09896fbc29fe47313b41299e874a701eadc34c5097535651"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2dd00ba44d447621dcb1b4725bab2c444afccbb30e9234a64c1d69f26a772bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b78cf88799ebdfd3f5bcbdfcf2eae0edaf4271a1a942d8b71133c1ac591dca37"
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
