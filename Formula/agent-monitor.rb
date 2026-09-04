class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.178.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e79ddf551ee0d247f5c949bba847b189e4ce834677a500f4acda5a00bc7efad5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fa16caf706f3a4acfc15390fe901af65c8db996207184eb6bfc5b0e88b163bad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1276a35b8f591c1e7e39a0614fc3bbe71cbaf46c91c47d4fdb983239f041bd98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.178.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c384cab89348f42bc094aa8c6e941e4a97e0976053a416b3c816f249a628e0d4"
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
