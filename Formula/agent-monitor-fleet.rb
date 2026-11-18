class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.533.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "9d99eb25c44a907815f24cc1f37bd333ae7b3b62858d6c87db92255d7fd22115"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c14c025b65df2ce709609d062bda14e9fd1453c996c1c15415abf9a596126de1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08c4feb80e1ac8168a8c9eecaa5005def7179e73bf6945d4a5f43506205b60ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c1f00a4ce54ce57e44c13e6c521a671cce744ded8767ac4bae6531cc970d3d0"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
