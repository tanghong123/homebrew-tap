class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.120.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a488221ad62a00d3ea1b01ed4b589624ee95550ed39f70f5c73deff83e1633e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "934cbe423f40d5a3d42a521be8b5a3fbe86da2862308fd65eaa3481344ef8e17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba1ce553cfef32cb2213b70c5ba77a60bec4790e49e124c68ec1f5587e2c4137"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f2ba01951f59482f6120382236da325fa06adee2bd157965e4f8b6f32d6f2a8"
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
