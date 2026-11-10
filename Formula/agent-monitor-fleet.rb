class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.505.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "039b6626a88385527ca5e7f1b547662ea6278a93e63ffd428e7624767dcacf48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5fb6f4928c76242141d12f68517503db0df6e689fbedb812c20e621fbdfcde66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4db330216a49608148ec5197cd63531c6dc8d207be90213f16a0b88793048109"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.505.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da43aff1fabc17e8df32bc1f1a90769bcb9e666f75f75e07f772e9b9462ad4bf"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
