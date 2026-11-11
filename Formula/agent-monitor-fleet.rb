class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.508.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "78768ba406d68cf8e27d86ecab6e0fc805fae1d77c0db7b16135e2f5133e00d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c2b8bd751532d7203e57a1b556f5f2fd05019ecd18a24b426b71a6826ec54be9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a79964591fc83f58309d9a09208dd5c95aab43373d58f756341348e75e5e0ba6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.508.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "079687df41f7b25f8adb044ccd6f153eefba7c572ea1ce5fcb9418541e8e7c2d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
