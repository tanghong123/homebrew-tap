class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.469.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "32e07bab478beeff9cce822dd87919801c6c9f42135042e1865a1243c9193a4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b9735d9c440201c2040d0cc211c70a204294e2ad4fbac80bcc5650020bb9156d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0388e9d9dd9fa3732e42a70a66ef757fedc4de941a886b75fff4b7fbe7cc4650"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b0b85a77372928ad8ac65129a1cc6a564edeb8aab660d1b771c27a8dafaa15f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
