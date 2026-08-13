class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.69.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0ff17d52e585bfbf7f2f62f50886c87ac26a960759c9bda7333006eb323f8b0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "dbd86c0a561201a4c0251bc3da6cf49b8edc6d6ba850246e80b5abcd13dacc61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0302d07244d31edda02b216cddb5238e4e466ac57fd9b97d660b940f456ad571"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.69.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77283e5859d27ba7baaea41322ad3d79842f93b55a02180b0c6ce88381d20d4e"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
