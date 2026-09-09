class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.244.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1b412b76b8f55c2ea813b7ca5d2cb50e52a46ca0c2148b9891a19d01d59b7673"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ed5953ffe625e3e4a5e0179018f09eda4a14b43478755380c5418dda9559c135"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e36d6ddfda35189cd7d8bc039670c6b024b7319a1aa280973fc50ef410239157"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baef5b031b4f569bc9d3466775e79017a08dd33f847368d6971c0a2f365ad62b"
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
