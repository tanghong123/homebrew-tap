class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.369.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "47b665adc7ea1cc0698c4653592b6033d7146141cefda56db0d7c9434ecb7f99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d7a10b5f05109fd9262afb0b29006554a6b17655a1c1eee7a6380366994735dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2df624cf101d35b5e4b17760f78aa91e63c2ab0864a0d89c82b7801e4195d96e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "82b99ab9d247d52d7db2308500c61b237eb57dc2cf77ddeb7dcd99b210282026"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
