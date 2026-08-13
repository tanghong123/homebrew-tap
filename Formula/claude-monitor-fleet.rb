class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b99cb5494de60aae800c673ccfeafca46e751c5b6e5ebc9aeebbc34c9347a0f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f3140efedc49433afb8e780e54d97c9bffee850ff9c1623dac45998a7fe9d486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9246edc91dbe98d87da0442ffa2133105516daa9097b7d051cf01d3f153e100"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a133bfaf70ed1dfe3ed07a159a633ac4e60a20cdee8a30c562f3ff4c8f118c0f"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
