class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.137.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "726a8e6a3823eec0b1894537d55bbd0fbe881c5b4eb30f4bd6895e2a6c57bf31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8914b2aae31dffa5baee0a1549b22c8076442d1ab03e0fc9d53808e336d3fbd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9825815610a8223cadfa0e418efe1747a5bbcf1dbdeb51017d39b376c02971ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.137.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88f8944a7506b5cd560aa9225643b1f10328cb8c2f43d4a94073a4d08284813e"
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
