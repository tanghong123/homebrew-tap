class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.455.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3237a42703496e39007e10741b23ac45bd17e2db76a55722619d9d0280262216"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "633a4a5facde83d4f300feefc534634a400fc27cad3e8e5195c6f45565cbb318"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f92e521be77a7b154b04fc4b03e08496a0b2bfe959c695d5914d430e5750d06f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.455.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "220873b0948897210fdda8f150e8aeeb8d2c2cb64d22d9267252a869ea6b5230"
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
