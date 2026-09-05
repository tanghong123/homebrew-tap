class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.196.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "20a645b3856bf97d9278227809197cc90c9c2a241e1f75ac6da637995c56f55c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e4c0b3de8c4fc75e60c7f450a82ebd4e385c6e492dd68c62d2d022f79ce5521d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6652e4e934e64a7c3513033acf708261bdf8447586b3fbd6aea7aaeb1b629891"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be81f9084c568ffef9448a5b7b368525b77f5336d6d9119f739bc9032ee719b8"
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
