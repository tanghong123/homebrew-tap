class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.264.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ff75917d89d3700433f18244e5b1a4f4dc93d95c62da7eb114a258e5fd38d4c0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c5888528ca89512dfe6e529892ad20d81afae56bde75e69476faf0fdc4ba75c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3eb35365ae3be2dd67975035373e7ad52671ffdd5f4c186e4ec6401ba16b6cea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b6ee8507c8a3c68927faeda6a2cf8bffa27675c73a9ee33ba06dc6e9e505bf0"
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
