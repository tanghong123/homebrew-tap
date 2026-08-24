class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "dc10593651a08b09d1bbf31ad1350e0b621163298410f4154c76b3be06a88ac9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6e95aaa22bedbcb92c3afdfb688b30da182cec15fabb7f88f85b2bcd4faecbbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a1b0e909314cf06f8eb1384b52260ce84a212f7ca4a4bdb7801863aed2b47ea8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "af94db3c3890488548168c77c24fdbebd90df751c036cf0f4ab6a669ca97218e"
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
