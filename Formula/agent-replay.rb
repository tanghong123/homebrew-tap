class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.146.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "de84c9e17bd163b9698282ad6351dea854510dc1c38a1ff9a9f677a0008e8b85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "09b6b76261ae474ec136607662342d392fed0c0d546417b9b130ecda2ffd1fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8abf8830a5610b495009cd545b505eb8caa402b33056ce8e441641fe2c4ff14a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "461749bbf76bb7b8d92c6347cec5a847d2f37960abb58df1da1569e5ad8644cb"
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
