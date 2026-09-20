class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.285.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5711000869c4e5ac5ca094cdd7217d9771407a479e6af447be2dc5e6cf1dd2a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a6aa775e2b55c57c49f8b9bd2c17e41506f61c43ac4b71ef7b2a7953e75e657b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "539e1c566e08124588b4540c264a640e63f4dcb26c42b070351096e11b825aef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "543975a4d6322ef4a147116dca2cb05ac216f820d42e1e4e8f98ed33f3d809d6"
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
