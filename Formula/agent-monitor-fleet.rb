class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.340.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8a36311c1b193eddfb9da0a393c1b36f997ea40bca03b90d9399e40817d8b519"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3008f52ecfd5e919dff55bb26c15153217c4dfb1657c8faeba5f3ca387f176fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6de376ed8f41d514d33b5c7b34cf346ee9124384e264e69875bba5eb290ab0fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.340.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0de681ae85239c59d8f350f2f04370efcff24a74a1451c09f6b220742f4d9c2"
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
