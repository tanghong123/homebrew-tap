class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.569.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8f63cc8c3b51fdfb08763dd53714f73a3e170b7ce34b4839d260f64060a946a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2573c7ec3ecfa1b2dafb6e67a17ef54a4dbbb2715c17c6b141eed3953154a41b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4471ce2f3af2b7917af60f0d951aae75015ccce2e8134e87165abd855ffe9ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.569.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c2bfb97c4373d6ab5b89ed158977c5578c6ef00a082c62489da36142775e9142"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
