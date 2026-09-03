class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.135.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "386615421fcd73d7a4d9bacef93a7d8a2ebda58a1361fcf713902936b822831c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f722af5a14ab0685ad5bb4a2a66e0c2f33fca1af05c8db4c4acfd84772656a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86f7d86a1337a0771ad73a3925122192428831a03d68b176c8896d35bbd69f73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e327628062b55b4d5f84d9ba78a947c40f7b180d371714f3637f9f36ed2b9c28"
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
