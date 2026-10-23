class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.408.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4f5e10778daf67b1d642cd630cc267d79844edbe242cdcc88bde1c2d84ff261a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "46312eab64d55378bc8f74d41f9601c14116385da55fbe5ee858e3ceac65151c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4519d3ab3e8969aea864d00fef79debf71ae3f52b0da235154b0ce48bf009a75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.408.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d63ea7f7dcf4052d2dd00c2b4c3858c9833ddbf26bfd0ed1eba1e3fdc0da5dd"
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
