class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.308.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2e9b41bbe21a66eb83120774e60efa6359348ad74bb4a1be6a5d541c10a17d35"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "690006a4515dd43db163f23517d1191e5d2cb98957462372d95d99b481905fb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1acc51b7cc89b71d282efa7c414b334420b3b2095cb7072c641533f76590216d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.308.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2f6f595c4298c30669b549c4415d23eb58193d4e04fd9c6a510c3bc76e01410"
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
