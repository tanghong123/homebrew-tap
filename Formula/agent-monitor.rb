class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.152.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "489cc1ca78373b915c08e2eb89b36fe37190418b7c631bc559b791ccd2ced1fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "26057ff88a4d914c4d1ff8ea0c15f81214971c7635e3ee1dac561b028a7d6436"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07b1acf080f3f1540ee99aeb8ff8e9297e45df22a2ae905ac570a0fef0f560e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.152.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c8883e41a4c8daa39904ebccf130126bd2de614ec49d100f89fe548f5a3aa628"
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
