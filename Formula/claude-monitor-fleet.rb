class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "56687cc7d2759d0dd59e538eb461a61c4f75fd6787eca3fbbd20c36f8b1f7fca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "eaec684e5eefc3418aafa6f968ba9501d93e8b20aa41883d0156ad336965753b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "acf9e9c21e947bda1173f8128607ce812b2007f7e57cbb3b68f353a7810b17f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "723a9a3cc3774481e92adef6155098e59c8d22bbf3f658b5ca5ed56cec8dda02"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
