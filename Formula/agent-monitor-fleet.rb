class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.468.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "350dd201805c2dd8f71fd481ee25cc71a38ad75e289667dbcef834236649e407"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9a7510b72313ee6188e7ee4cb43fe81eab35c9183d7028044f31eb0f92849b3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1f58b749c3a9fa9b2a35c06c67cd6aacb66b47cff0fa44a0197fa151b3308bac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.468.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b999d426b53ca3ce311dc44397eb307def04723e624eb0b1f8307fc34526a20a"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
