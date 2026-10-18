class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.386.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8e713436e444fb841a8bf3c1e3a78d6b5ff3f45db67de23083804c379dd9a673"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a0952e7a341268632323bebde353ca233b97674feda2445c5e6ffb0c902464bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd519e6bf64ae0b1dd780d02c359fb0c1d8f7ed209ac1d7928ee0a0273fc429d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.386.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c60d2a7da1ba15cade90ceb648bc73d8f168051b55b261e5fe114fd203f1f8d4"
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
