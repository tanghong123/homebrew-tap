class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.564.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eedab923a85aabb5033b5f3f0f85d884847522a0d756d04016bcf4f8a60195a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8eb2ecfcbc93d0caac257e90e253617230320c974545dad2d5f4b6f2b7fdea9d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "142515b2573c72a0982704298a30274ef3507c9eaa2dce4346a7b8d34a2f4453"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.564.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26d9ba06d06dd5d93c086aaa91c82703013f916e802f70fc99a4c25f619770cd"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
