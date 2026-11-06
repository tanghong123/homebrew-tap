class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.483.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a62f931d7c0fa1bef71e3e7893edcc206f039a9754688df2a8545913801868af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b5823cdc3be0b53ded3a4e8a9647f34e56e110a82b072b99f359908d2ff997b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "34bbf3849ac66596affeb7f862abe630800c56a252c78b2883d90fc35b01e03b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "602d213a594b6cb21d0a4ebbabb2e15deb3d09deae8cfc8352b7873800f1fab5"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
