class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "72e2609f832dc4551d25b5644e57abfc036df7db52ff59755daa9f24c1f83e5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c2204375c994b017d5720080129c86e02788fa03629ae9136fde383237e84f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "849e199abfa751619613ad9def788bcacadaa8422cd71dba187285a03127ca20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bbcfb70a492375d01a02ea9cbdb53e5dff173a4c591016c80a73261665dad8bb"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
