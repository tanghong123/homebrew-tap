class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.109.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b9d19ef8e4547cf887b804436be74218df020f7eaee63422eb74911269a71a54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2ee265b82e012a4662f7f8041d11c9e358065db48259d5bb0883ac6beafbfa0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "656e35f93d7488b07b1a30020fac38140b602efac6efea840d267ddb30daf423"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5651eb841065dff0b78a111e9b0d0e7b7357e31f13e99de581a93376743a3d67"
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
