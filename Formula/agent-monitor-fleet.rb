class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.279.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "015ae8b6c2337602a63263e654da286c57a2c4b8c8918b1ea16708e1acb9fd7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c293662af401f34ff9826d0f34996891cc56ea9a300c3ada1b42f2ffb39bbb41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1cd937cddbaaae0c2d8ac11d9f9974705dfbbf75e7478996b360a44212fbfea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f751c2fa30821c02f0717e2cb4133aae5afef5d421afe86db47d58aa4c3e687"
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
