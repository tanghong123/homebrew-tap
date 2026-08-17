class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aeb98d5e48d17ec10634c186f2580739a6a5dd24e39ef0d8644b3dce6f7ce808"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dff854ac17c7bbbb5ff0c820e3611dd2f1abe6bf63a6044a70e88da25a69da98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d0e8f8236e3700c792aa547b544fd3413f91476f13cabb64aa6122ac089ce562"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df48391966a683182a38408100c714d9359c3a5985607c85be503f721f743203"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
