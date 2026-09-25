class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.303.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b875c84fe3db14c1c2b4fe60c2c26b3ae6a13b8db3db3a9ec58300b6d5848095"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7d8855454e3572ff15f447e86b094705da4a796917d57774092036de69b7340b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "69ed33c543116adfd078c69c1b96978883dedae0b128af7aa41a0232a8c6cde7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.303.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb62dcb08569429a9883435cd6035386e503e9735418ed38ec8912a9af6cfe49"
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
