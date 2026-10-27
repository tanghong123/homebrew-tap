class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.434.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6cf77b502fd0eb4ba38475217aed2a552cab5498c29b517cc7190627e695c7b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ff9ef112ec89dc2040b5b438d71971302b6c6f1d0a2b60621e8d5de0fb3a014d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f18ab90c04fc347e0ab702a0ecc25a98272e411f9b4b852d774147f2b329bc7f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.434.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d77d2b64abcbadf68b0e08025f7a64957751b6c5506d7e8692b4966165096379"
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
