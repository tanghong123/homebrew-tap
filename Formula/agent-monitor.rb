class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.189.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "14c45ef251cc4a1c27a4260dbe341f5b28e6b27e1bf9162741ba1ba2ff8cfd7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "192aff209943e1515f853e58086bdadfbc298a5b97477aa64e375966122fbbcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e530dbfd363ed6d7ee09794b3236bf614b12122d8892e87d8a4db45c662953ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.189.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77bdfe8c31eafc40103b0464916d58c2406bb52f05815687483e125c8d395fb1"
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
