class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0f3ca0264bb266adc0d19e1e517257ff4e6357db27081f9eea03ddfe691fc580"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "98aacd3bf669097d61ebdb1631083c643892dcf61a5d47c013dc0ac360c2ac30"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8ab33b9a1033ac2ec724210327b0196ffa7ae7e4b53a6baa3514201228f78b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bb3ede9ef32825d77503e9e6ac00589eefb0ffb2bf4f8ef6487fb6c042f4e85"
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
