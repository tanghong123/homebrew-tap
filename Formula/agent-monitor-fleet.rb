class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.214.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "01f4c5cda7d8aa248f3eb9df1a63aac27d15eb8ab54a5a30e5251c68a10f346d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4898c0969efd6eeda7ba7e4e09251245ac46438916f0c50757a1c80741244377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e43817d18e6b13f83ca6282b02e4f9ead809f3f8bbf45ce50ededdf03e76449e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.214.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e597e70bc392c1a42da2c312de150a6b68b329481319008dd38003b96962a2cd"
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
