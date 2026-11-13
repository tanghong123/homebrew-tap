class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.518.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aaad411fc3502b30b1b313454e2738852c675ab04da53256b4f25999de562ff5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8ce289154c5977c26562cfca82513a1b09f2713c56c48580fe225950ec0218d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "758d69de312378bb9fd1da3a364927f8eb370075bf44e5723740956cf5a86b2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.518.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1c7dfce8ddd6b561c17f802b9c9694d3cd207416e58d7ae64debad46711d0ce6"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
