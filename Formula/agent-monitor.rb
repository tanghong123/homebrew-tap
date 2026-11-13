class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.517.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f118c7af55d2f39e793969aec3c7af422a682231431d6b682ae954240d1d6d60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "04acbe7510b16e1eb8c8457c67335f6129b86425305c789ecaa811b810739c0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "86935cf7218574c573686572910167abe95adae279bc56de9db0121669108b89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e3bf522d23222ed21dcbdef7f6ed9304d95904150fa412c6cfa4c6fea95fa55"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
