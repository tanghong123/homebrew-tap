class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.260.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c754a2f22dc5539a77f8dd9f3cbf4222f1293d267e1df5d3a8cc1c7cc54e079c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2345b24369f468819deb57fa2289ceb5b0916310d703859dbecc1c0093368410"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f44c941f959d4d20b300a16f1cb27486c91af0c856f5c1e20966e7e20104962e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c88ea35feda521cac550c719dfc150bbf1230203b4ae5b17ddec195fbbd811d"
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
