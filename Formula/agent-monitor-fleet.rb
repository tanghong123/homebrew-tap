class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.227.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "477bb99fc0a9baf3ab28848cdc6e1ef9b3e4dde902ff6d88416544e7d68c29b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7af9390aa4b7a363709a03d216cd6f1f9f6f6eb6a463b768eedcd457fc200c5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83b222c3f0e5939bca1ed1e07ed7911a76696740d67af8bd6538affffc29f707"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.227.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45ebdc2802206db61fccf7c5ace515ff3cfa525063e40f91c713c984432611d2"
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
