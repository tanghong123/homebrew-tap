class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.465.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aebd53a7171c39191b7c6d90b93307b81ee4f45a5f62ddad47782c031c1cdb3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7ce765169b2ef0f03dd70d4373f67eec81ddd8c16d8310612e6580e6e0a01287"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "89c0951bfd5b1a5b3471da793ecfcc3bc9287efaf9b2602ab704ee8b66ae2eaf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5baa8116b8a9e4582f93fb687bc65591b77cad1ee1e2d4929df8e28ddf3750c"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
