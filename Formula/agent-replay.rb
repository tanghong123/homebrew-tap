class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.257.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "760c5540406042138858849f53e753e0e1262f687a9963abc6f173ccab25005f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1093eb29fb9874d7a33dd0dd607c24303af2186f8eb91b98a2caae3945635c2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4fb84d15a89e4520b9604f828411d18eff85313728e7d686e3c124105330e04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.257.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5bc4263089d9875fe52da96b7af282ffc1fc1346aebef1df3183733ccf21b511"
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
