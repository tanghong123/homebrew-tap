class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.423.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a582104accf2b6f6b05d1c18aa9e2124f1f15eadd83049385e42edcd1b71d1e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "45df5a2919c8c442bf560e4fdb5578e6c9359dc8b911512b8cd8fa8e10894d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "238a661ff2491340b5dd7bf2bb62d1b12a43fb5911a15d08a1f78b4f37fc02c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.423.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74a0b84a5218bc4f1cc445d98f27e456c3e85702e80d2f73a89acad97b0e9491"
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
