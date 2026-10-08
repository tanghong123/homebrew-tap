class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.362.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "934d57bcd7a5071bc9997fe12d175b105fd86fd5a5836a2f6047bfbcdecfeecb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7a2e1441e293aba150b6804eeb73d0ae7f14e99eee98bf43b9b7b17c3e940618"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "32edbc4c8f53f60bda70502a5455adefc0d58f2d69bca01dc15da2fc0cf1e8d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dfd73bed9834beda553d1cf9e197d41aa12225f9638cd4a5d09bbec3b373dadf"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
