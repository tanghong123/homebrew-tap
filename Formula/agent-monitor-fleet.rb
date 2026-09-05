class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.190.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d087288a5a1d894c9a230a2a4b25935d9373d8d724d500ed2f75a86f4739bd53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d17823ec7b9e7dbd6710bdc0767094a558416ef3da5e0d6138c2ffcc0f7d5791"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8be3b562832c84dc82265ae2bc3a6774ad706b7946da7fa23907e751a197d3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.190.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fa04909efeeee1f15eb238b2a23a036be6f5f8e7a81710906d839e9f052878c"
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
