class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.536.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8522c849527f24b549bbf63b11b3aa50216094e022074c5202dd71daba064b93"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d7fb611ef6de5e5e598f613cce2f7a82b385cf09aeecc892800b18449b64b60e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5fb2779afb05b9e55fb5291693843e4df7adfcc4f0310b73374fd45f8d7a20f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3a3b17085a8ee2cf87545518eb5056e9760c5bf6b62a2375606cc00ad5815ee8"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
