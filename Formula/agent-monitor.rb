class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.569.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eda31bee23b34c6886e17a7e942553be61ff600ae6af9e421407e20d7f567758"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4ced4592e27f99fdc7b9eb8660c274a4f6557d9f788cb50ec95e0901e6ad39e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2844e61a1d58e905b034eb382f71dad9451a9e9854ce637dc3271de912afb13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3cfb0d3e0aab25ce63183081099bece3aedcdaa2b6e18efcbbc20eb90fda36c6"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
