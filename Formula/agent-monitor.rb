class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.115.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "810324390580b94b73addbd0b89cd401229eb73efc88d30b9c8407a6ebed69df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ed10d7213d26f8185ebb860cf396a8583fbac6aa2692e9b6e06931f5f2dd701d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27ad9a711cbd981cae7fb456963afcd1db38f0581bf08964164e1382833742bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.115.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "846297bfcbd6f09b48ba25a4d1fb20e5f3e1c01a8053296b0f5b8a3b280c4253"
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
