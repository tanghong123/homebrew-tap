class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.567.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "5dd205ccbdd56ab7a47be352916f4d054aa32c68ecb875d9e5847b47a9f9d255"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "06321b8ad5309bcc9c0853917dea86fbed317b677bb9bef00835712f58ad133c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "653f071f3c3f05773adf74e5f01503db473224eba3c4c35af108828451f77fea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d160e0375bcc882e63a85c719c05576e2f552c971af538ecd70034e23938b7b4"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
