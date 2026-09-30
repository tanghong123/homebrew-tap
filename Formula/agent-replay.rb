class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.336.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "88078281616e487d05c9897487230c1d5a8b48931315390cda4cbb1c1a65f052"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f2ad1b806fb379dd0a417f316263ca3605a56e20d126cc0e1b58de11c11784f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "64596a506dc37849b492d3045562b1d20eabc1e40cceca94a5a7a8668df2c98f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.336.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49bdc3ab010504b88fa81f9f835e67cfb2a58daf8573aca8f60f620841c33829"
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
