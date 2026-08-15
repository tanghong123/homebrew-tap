class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.78.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cb6b9bbba847855305afb964542806754e8490470d684c2893f3ed309595d8b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "acec3eb5b3764fffdbde383b7f6fa00e8d81406f58cf326341979a506fe76e8b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "030dd6c8222ac3c7c84b48c57ca7b91181d6dda2c89e7858495eef5b5b03fa59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6703badd3ea288d04c6e18cb8a4716a34e92628888a3af215f20c306aafc5b24"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
