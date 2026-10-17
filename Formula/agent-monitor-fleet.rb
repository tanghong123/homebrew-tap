class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.384.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3437e4e633b773650ff439d5131f91a41abe741cf76530fed63c28f8ec136b0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2f7fa70e542d601efef42785b8e7ba7e83b3907c9337920acd1d215ee7c934da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a4c3ba16a8990b51a2197b0cc6da2556c072046c624ce7408e7993d44d774ab5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2f84f698b76745c384309d5a341ec8d6e13ce1418f36aecefd217e4183065ff6"
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
