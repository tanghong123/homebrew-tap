class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6b07d7834fdb4edb20f0bdebd7922504253b7eaf75562dd8fe9ca5e1a42e5dd1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2d8c86667b532de365af0cc0cd579ba9441616e5ed3a0ff2e51e7a7d07072752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6ff8865a639da68a6e8d31d019f0dc08f1361738f361c364469c189565f91d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96a8b62b72e8e38bf87a26a2aa0c1c0bd390da48f72421fd0dc59bba990ecfe2"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
