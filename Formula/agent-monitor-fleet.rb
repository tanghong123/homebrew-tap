class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.386.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0bea57e54808c9209f8bf998e34c1868264f129eb13689e408ef56280221d9c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "18a091ad287accdb7d4bca778c14ed345df8c2cc151679951a5f1687e451fd46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2cc5e633ed511703af9a3456c4225e0e7cdcc9ced29c72b6f42f1be0d182a890"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bc018e45a80cb19a3f8e44f237d9abf7cea6c6bfd63645d07985d85ea223ef4"
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
