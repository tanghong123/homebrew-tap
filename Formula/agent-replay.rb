class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.343.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a4f654b6a69e1779d03814afc0e38fb62891ee888ee242afdf20212333863c53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e3c694dc6798bb5edb758bddb2ecffc6958da5e58d839b32de18c3360f3fb777"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9aca4fc32258385e9242eeb8803643485070bbcb9a3dea15fe4788275991b83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.343.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74020635783314162a2db17da3e4f97eb28e353cc51bb73913d119bfd98e941c"
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
