class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.94.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f8fb8b1c788c596d660b455eaec33a5d969bf25ce3ec48a0f6de520aa20bebb6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "99382d71fa6cf1af9dba4f2321b90f8e4d8ceb3660e1247af17518b8d2f9c9e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b7b45252e7deae416848c105a7b80a622653a2a320f86b9f284fcf6f8079c37f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "66c7a40667e296d80b1a0e30e924ca1ead051c194ccd29661e508d60aae5050b"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
