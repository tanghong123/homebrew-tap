class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.332.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7b028b1db7f8627740ff3501678400831f3d24eacb2b694a9284288fd6652a07"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1155f490f3e2a4ded7c76dcbde1aed28ec6bf0946ca3865d031186bda7b30ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d134674f99077a03c6da37b5ef04fd0941dbe07ca074e9f32bb8f054f44d3b96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b0155efe62f44f02b965a8e23f5bba4ff66bbc66d2fcb463bdf144013187a4c0"
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
