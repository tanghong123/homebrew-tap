class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.17.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "544dce83d5c5f5ebdd3263b332ec10a18ac41b35469af643ebc3644c171cb7b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fba0f11ec57721d79a70c38099876014e2e44a1f14b0cb5b1564aa190829fbe5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee28da4de0ce6ff3ede51ef257f0de586cb57b9a91d0ad6a53ad87e0b1148879"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.17.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "096577d575fe287b8c027e3a9db5e47b61ed4b9ec5b8dbdc8501164c9ec52fe8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
