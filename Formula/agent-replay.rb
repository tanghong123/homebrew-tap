class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.465.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ae2c812705963216dcd78fe4069ad9ec5943df259fdc4e10e032e7e5f4c85aa7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d5fae528fa582a62b1af6493859d23dffdee94c6b7a716ba4489c041fdf8c8dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df979e8b9d1ada509e51054afdd4009e27c0555751cafacbeeb5f022643028b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.465.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "913312bda329fb4a1ba697e25a1cd2c92e6a4225cff51a5ed9926f0333e6d6a0"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
