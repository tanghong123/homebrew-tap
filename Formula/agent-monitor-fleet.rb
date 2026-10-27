class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.436.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fcbeb6c7f7904999e4e3e2f29d7dab7ba8d0742aebb3b231241dc9c892f93e5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fd2204aeed12710e10a4ecb872d6320463c2d2ea08271ac5684ceaea1e35f3b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7882d72dad780303e5a3cee47f9097021d2ee4db6813e05acda93c862e3db3eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "206c492689de98fc01ef87810353c34576b0678cb08e8f1a450ffa22ba4afd7f"
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
