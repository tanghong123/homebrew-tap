class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.212.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "527263b7d61862911c62ada76f26d9ef01331e89038226c648c26ed6b33878dd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "70d6130b76adfc69a57662db965c9f0e0385d1f640a6742883129ad96084a8ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db3c3710afe7b5be51638c0af3c47a3015b8690930814cb213f44823431fdee0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.212.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cdbe04f0de7d0d455a8e9b67bdd3e7c641c2284711da783fa838fcef4f871f76"
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
