class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bc7518d34f14b206406cbf91170b370a33937e7c04e3f08bb155252a1db2206e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4cd048b50d0b25c7461cc8c9405ec82dbdf21d5d7d5b7a480253c7f3a5981488"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c61970cae663add36569c87c8f42fa36697e1a92b4fdd11054183683108119f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2bdb65eaa9b1e17869a24452238cc5abeb42860257904d5707b1825ee0e414b"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
