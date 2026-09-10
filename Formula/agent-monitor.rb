class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.246.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "16fe7d8da54d6a514df76070697ab024fc8a8cd2a1d9ae960ebc04549dda899f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ea29b190b403079c942c30a80cc0061fbf9884000d91aa598fe4acda37ed8ba1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5591498334bcb72c6bf937f67a8957931c4038c174f788ade791291b8aff5e5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.246.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "24a36bdf5cd92934fe1f13065622cf34d6abf9f5634bc6d8495ba962a8840216"
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
