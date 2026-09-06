class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.213.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b35c16b034dc144ae3b7700a7f80269c7ef07dce1cee80760b2234d2c7c3b6cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "88b8075d4de8adf1affe2233f2a67d655a697d7e220df60b4f5026ddf8ee2b77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2efad4f6696e0949d62c2d14c61d4521f7c68e03dde3ce9aae5d560d22e2c69c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.213.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5b8da969531c7189304ba696643df897a74be0cebc17f90a549e3c9122af72e"
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
