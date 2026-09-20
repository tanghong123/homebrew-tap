class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.291.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cad01f0ad21d34cc6ca6117a87f0b0bbb0242403ffd3b45fafefcb47f0d41ad7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5ff67343c4ac4abc99f6781bdc7dbb383548026c22ac13c9f17ebfaac88528e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5b96c65491f6d436e2d7e1531ee3c4111a09bfcd1202cb2e9deb0e7bbb1f8ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8e3fb8d26a45a210c43b8ca3b0bfde6128b6fd534db1e641099563cc838780e"
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
