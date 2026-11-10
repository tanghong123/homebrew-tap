class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.504.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "71dabd261aa55196735acc4bfa487b8a131c32c7f5fae1fc9d6b6abb82803937"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "895c3ed8ed9a96615033b070988c04e7c18619ceca846eb85fe6d4d2ffb7358e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f55d73f8984fd8cf3a741a61f974aa7677ca05fc5f7a5d3df2006df1c5bfbb6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e770507aa7dbc10d454ace2ebc378bf4632557e7365490d024a6203c5ea165f7"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
