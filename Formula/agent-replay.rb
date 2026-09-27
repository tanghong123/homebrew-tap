class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.320.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "214e5de7a688257e4062959394cdadc97163318d29be9dc8d20ca4cfcfa922b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "aeded1332a0be15c14ce7e7f1cf1f27597473f4d6df67d1d473b05c1044b0276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a5f0d86a9737c0d8a65b3ebc31ab37ba70267523e1efb3facd61bbdd422fa16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54e2896dc9e274d6e21a46d3aac5f785f99d322982bbdad7dd3fc6d403240f74"
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
