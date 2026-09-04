class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.153.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c54793a5ea829b5f67cfcc4bf289bf8cc626e40cdb0e801277d8757d13b45164"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "048e75e4c6d332d8c26321d8d30ddba387cfa2210683fa3f75269934cb728d64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95ffc5360164a4f26a8be86ac24e9005bc227afd9d7a884c29f23e8d1beeacfc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.153.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ad894772de04d8d6dd95d40e1ffd30b8447ce09ee7fe1521eea56627cfa4659"
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
