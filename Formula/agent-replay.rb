class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.124.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2ce892ee20b843d4460ce991a28914b1dc85cc0a86230bf72e0d6aec97f6ea00"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d0ca6069b33b74b35bc837626a449751b9b7e97ba0357f737245d0c680d6b26c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10e8afcbd0b16887c745bf2424a241390d039603f0f6cde4ecbc2f59d036c117"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.124.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79eb6a27b6136967b97f5e6a0953645f40d93e6ca65e3e39aee42c2237fa4c06"
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
