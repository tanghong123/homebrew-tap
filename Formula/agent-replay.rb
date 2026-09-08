class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.234.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5b250727854a46e720e23af8c543e7eb635935a017e2f4e779ff57bf3ebab870"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d30227465b5b15148aa7894b3f35119e7db854854cdd85591f33d15cc7a43afd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7a010b04ff43705656f70a1ba2d2b2993f8689117e8d5a277a005aaef1df453c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.234.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1dede7d176a9be42f23378af9d9ec90b07d328b7ad1c25764e92a28df0557a7"
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
