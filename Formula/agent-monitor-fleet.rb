class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.459.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4a528ad4542f6852b6d7d6b9f49af00ced33ab12507cf4ba0f9b388f2eb4920f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "93f9c6e064ac5439299b6045cb370ea57e3cf63a78a11d92b4ca1ce45fef5d34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1916c517b5a038ffd582943dd819de8c20fc2a06b54cc767624404710e0b4872"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.459.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2391f629cee1af403cbc7ede1ba68e503246a342742a237f55062d60a4e8a970"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
