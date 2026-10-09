class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.367.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "069d5791d0cfcaed52aee38b1ed398c05672ce99660f9b90c76115a029f528b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f651c9674419f6626568bd27366f432d22a6ced66444fce86b8ba37a98dcd6c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b23a89fc724db8edac2f5588a135e6894602028d1b81cd36ce400d35c9a6a25a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.367.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18f003a1d1088fb0e23390116a9c5c40503cf4f565a04a88a7e6a8482f0af559"
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
