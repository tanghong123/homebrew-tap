class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.136.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "dbabddab3943ae65ad7f48e68407ece26e0b62485d75d8c55100b08f1508d68a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "68a5111e1eeb2571a7685366484084126ff47c54668d8d8c4e5d97aba5c90467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d25ff574459abf2fc5121f6020a8766b707714c1925e2aa834eda5f4074819d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "717f225235211769c05c0fa3f102bfacf17e501e4f273305b970fb352ae95617"
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
