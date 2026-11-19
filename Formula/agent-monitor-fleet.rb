class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.537.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0e14e44270e21ecc912ac5382cb212e8ac4b65803cd96808cb712f211f690f09"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1ddbcfe5cc99d3af597c10d596245c6f8bef62bc92248f2767373b06f92ca0fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be6fb0cd43a25ce7c08f1ccc3eaecc48cec870703705f9256d8cacc6e028362c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a7f628f1af4c74987e2d3211fe4045b1abaaf84bb1d8008690f35e4efd707f0b"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
