class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5eb4c7e81dabbd984db5c37b0170ba7ecd41357d78404f6d396dfe4c41ae5ba6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "11108f0ab12b7602203278083b763ef72a0c0d595d59ef6b8d77af40f29dd187"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9f4f7102900c28b9d2d7cbc1df283d7375da861e2c4796498c80cd8a04e2c4bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac6e9c0aac52deb36ec9c8b8ca056de88890183a78f61f9c3108686f782fa184"
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
