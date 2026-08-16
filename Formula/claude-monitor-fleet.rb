class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.88.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fa0eb37764b0fb2c317cc8191f2154780fa7deec2fd5093acc475bfbcc36a8f7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1c831480099e7519b2914f30d0227a0c016794861b44061645c7a480958ae561"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "846c04efa0b8f90d9673664b3acbfb83949080dd0bc42dbb11bd39001c8175c8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97c34031a520438c3021edf8247e05e808b00e5c14397bf2d012f4a4a2a0540f"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
