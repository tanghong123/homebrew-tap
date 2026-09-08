class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.239.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c6437642a7cae19fd181e5e64f67a63ef496de53ede234095944e3f7c11024db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7e97403aa75c688b865a300280b4bf9b29a91cecf86099a9e4dd77f2110b0f13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e6bfc72ce0f2f12e6e924f068babbfe2412351d9851f01719435e2fe4b1ac06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d6c480abd3a153b5746657f131e64fde96c2a6b7e4afc3454c0b8fbe4ec5237"
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
