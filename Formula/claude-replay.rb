class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.4.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6746a199a0001f18c2ea674d72ff002ce305a21843b43f78f60be77a3066b375"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "11a702288a7105652379033614c014ebfcbf30e5aff60d331773a0b68a5a6e19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "320404b27653c143f154b69291d4a07ac1c7309c7163e6e563d1b3b39df75566"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.4.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd9c1f794a959eacd2dc57b9907f41f25473e789247590dbd4fa41f7ab437027"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
