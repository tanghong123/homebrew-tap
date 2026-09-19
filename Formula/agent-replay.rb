class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.280.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1401b9f21c1cb1e9d62c0eae46d17198e84564f333c272c693c13322a2deb489"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "54a9f2cd2ce4ff46b38d4afdb1b9ec1ed952baf1da4d2b4ba4512318f8cc10af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d1708e33784711788c642707f7a6e6f1965e707a3a72061b98636d6821774079"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.280.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2690e45a60ed05b80a00bd9b5209de6dea8bc453409ed217a0af49110d2929b5"
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
