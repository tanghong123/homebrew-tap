class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.162.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "eef9f450b4ae84d41d03ed60c7c26e40b0d6192bb1807f00065f68525c2b480c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8c3bcca5accae44957742bf49677a08fd08e3a535b7476be0773dc0235caa633"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d50e0a8d5de3b0c75d3ad3640b80c4f806d561e98d897797e3777043567ef926"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7816b8ffc0724c5da2bf64b915fa70aab84ef420654be322609f783d56487658"
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
