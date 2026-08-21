class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.97.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aca66556b335e825a699b6fee8a3a6d4ef674e93911fb9eab7ab05734a708e56"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "36516606c22f5d01a5a07d2b64f00dc98736bfb21e6f54e8cac7b52b8f2efa35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c17d73119d735dace1f4805dad4c9534ab3319cc99b8cde589d1453bf896bf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bba4669bc354319376cb743e11ed7d24906e0ebd2f3b63e17a853f14d0e8d105"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
