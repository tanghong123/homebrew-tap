class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.355.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f236c0f7bf5f90e820dd5fe73de59394fb078b668b3250d77ac1a1438642d2b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7b93dd9dfb3032cb6ebcd3c53862d2c95c826e0141a5c0af437fa93ef00bc268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d22b3949aea3d39144c0c22e710dfc322d401d3860365ac940de049e92912c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.355.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1354c08664b25288c3aa9d2e19710ff71c4d5ea3235a9ae821ef2a36c5d90b5b"
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
