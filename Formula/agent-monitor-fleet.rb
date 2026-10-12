class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.374.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "754ea83ef156c9c71a2e5fdeab57f4a840463e11371736d845873c052d2e5d80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "874fd5f2b369374103d2b64fcc1159306ecd67ad1ae7e7a0f3e1765d04a2fbac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a062ab90387e0071fb908232dacb17ae44f49fbc0161ef72764aa3c55c9fe79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.374.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4afc80647bac223a2aaaa93ff51d1182a1bfd5d19ff560835254beb31a5f5b0"
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
