class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.215.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ecc7a0aa177c637abd93fc99975341c2fd97989effb17a1ab9ae84170ef8e018"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ca6b12763dcf67659747bce70d40715587f9b9e0123f21f8e8ca14630584a5a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de32f8bf6f752239ded5880c17b0c6d201d5776ddb94bf2de5c7c30b123bd3c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.215.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6faaae51d8eb0734eb79745290d5eace862cb24bc4ba6b247b5d32cf98f80c22"
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
