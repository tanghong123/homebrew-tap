class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.288.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c7c6b1371efd0f93f87c48086a242eb4344a5084af73ea787c8543fe8b7d516e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9ad72b470a75062d435d474c24d7a39efbeef8ee9960954dc7bec74cebb49c25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c434e517c86b0460f067d50fc7b125db7814099cd8de4bf75e2aa186529e64ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a51713625bd453ad4587fc1cd40accd5ca28d018910ab1fb631a134cd37a16d1"
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
