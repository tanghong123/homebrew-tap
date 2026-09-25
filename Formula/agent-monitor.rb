class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.301.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "851d61c335e9c711d709b31499344c8f5ab3a3007b47c71e2fd1fdc91628232c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "703a1711d8985d2a908449434d482ff84b3bfa97103cbabca8684ffcaa70d5da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aea61984b491d87f2b7d0fce20d62470fc5f97d60b8811b189f454485b548a03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0210779262355cf2ed2e62e2c31683e99a69293062c67902340f184cef5fde42"
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
