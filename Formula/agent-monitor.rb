class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.493.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "6858d44a563fd26e6a1d7e0faa2b3964b3766f18515a5ec16ebb0cca508b0425"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "919919aefa3a1f8353cd2046ce9c68628e0f7c4c9245401fda4388693993e6cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c36fb938c0d8157b12aed0002c33a8e8c4b436683abc52ac3d12b96cff31607b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e6f502c728b7a17f14e18531692afa56a5aba13b11b5a61da8e6cd6098520e4"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
