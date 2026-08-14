class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.75.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f084834e31653dde4c39755bec44bd58a2b87a33f3d637a74d30a57cf7e35008"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e7178b1df1f6e9fdd2ffc92cd5a137689cf2cdc51cf5202321d44c0b13069a68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44dff08a4b215e68543e45a5b6f29c513277d94553de397d97e2cbae12dce2cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.75.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea409e3483cf5e7633a1a96f558fd5f8dece822d66b57576d9a2fcef84f6318d"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
