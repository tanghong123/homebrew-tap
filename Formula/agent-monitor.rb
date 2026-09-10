class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.251.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f8c24631e3f44bacfad0da86c73a00d93ba865b26ac025549d3fdd4d418d9a99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "97957e823f71bf40fde50b76a02e8bdcf7447edd3b636a1af30ab98fb595167d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0893e1c4976f18dd8bf50b255ee2f666559f269fd0d133b2cacc888dd16e71ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34298bc71af95c2ee65d4da24f96df77ef5c2bd689a2fbab2ba3b136fe24ee72"
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
