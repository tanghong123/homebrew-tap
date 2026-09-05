class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.185.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "63c1ea5da0851279b57daf82947516b26535220b8ad892c9b7bf4d2e7f4feffe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "67faa1fff83dc76fac3bb8304ab04b321a2e14874a6a7e6b0fd0ee3ba3d85843"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0cffde64e6ce4b0071d1f623cafab49c190e44b6af6bb447b32afb5ddd87715"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.185.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "859d343388b529c535684589d1ace4c451520525d4d540deb6e0cd5033c38a93"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
