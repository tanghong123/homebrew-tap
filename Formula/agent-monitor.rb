class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.140.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ac0cc718ae3723353c33b60115bb552bc97067cb2ad1871acc1110d9fc6080b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "20ef8c0859203c9b4b65b49f507665b7a3f58bb076f65d8e96bde3b32f43ea9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c070d87f19ffe1696cc231541c0a0eb3e4e5d742c4c4fdfc43940938c0580d4d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.140.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4aca8cd0651db72bcec48754ae2468a713b249d2d0f941adfd5e98bc37fa396f"
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
