class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "dbc6408204eaf7df88552a3bf2662413a5e0002c272faaff66ff37a9a2b9ec7d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "578f9a50a32e2ceb28317b03f255f1b86f772ed0c73626f0510f3123dea5cd41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11b8d7558998dc8ac52e3b7390ac4bfccc9e0ae30ca3e1e1ad22e9d750a2e6b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a76d15ed35c533a8acdea280af186b8b1fad7ba3ee315b1970317e4bbc7c2fe"
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
