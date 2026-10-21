class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.402.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "550e68f5228fcbc2098f7591ed4964f94d8729857b9ca938adc25052682602cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "26c7b3ee0e6d9ed01f928261d5ba9d8c2c58fb6bce1b3a5efb6ec3839ef6efa6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f59968b8b4e41051ba6e9914164a641b3bc098d82ff440fb6672f39fe774e92"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.402.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b51de82a2bc661e1c9faed43f140c70c680e2c9f728a22f9b3e33d1a8eef723"
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
