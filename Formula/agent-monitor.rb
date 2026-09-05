class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.184.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "584c9367bde5babcd2ecdb34494611d7cb751eb5c80a5fac40fcfee0b01edc65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dbf1102a7d417263ec5b32e94532a91eece4b7c9d75f17137f6ff45a0d349c21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8e87e9b7bedbd8eb89874f3aaecf8fbac047ddce41d342b39f2f0b934959f30"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.184.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76ebbe51b6d45d1c0695fb766aae60566038e208c37b1ee3c55e33b798fd7f48"
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
