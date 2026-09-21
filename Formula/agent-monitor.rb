class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.292.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2d048fee7e57fd7048d10a187a28c43c18e7871dd905e41506dedadfe3972271"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "097f0e6604155631f726acb5eb904b4424b7fad6e140db5a4b1073c01defc520"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b31c774ddfa7adaffa45f757ad9befa8c6fb230c524ba9614dbabed816ce621e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "17e58257afd4183a4e0fc269a35ad7c9b9b802b09bd59beff5b45da2d8ce4c1c"
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
