class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.393.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "15773e0bea795248c564ca4f7b2d284c2d5527b55395ea94f31d2e587fb07e33"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "05a07b77fddcadd3ee33751a867c2943c5284f3d565f7850f170bdef5f3ef34e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c408e487d269d28ade7177ddd6b075423f1dfb67e6372a5d5e5ad8a2d294b77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.393.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "793b86a4064233962ca9e04cfb2ac2385f6b68104046782c236b3a349add35af"
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
