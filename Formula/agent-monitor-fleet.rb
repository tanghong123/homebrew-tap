class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.142.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "824abc0ba7b28681e71ff6b8e7cb01f903c2b3c1f84cbe3a77c5386de94f6649"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "64ab4e7ff1454cbe3abc8a96532eb6191eca94c526af5025b662c83de3dd7588"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a0ea59d0b9c7535b545e8340ec946f9848b6f2cd42f294a31c5de560456d7f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.142.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa5ea1f5beafa8e60f1d301f38a7d14fe5bd77479011da342ca4ecc4839fff60"
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
