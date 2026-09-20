class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.289.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3601057c52fbcbe8a888151f92a88d8b5a470de451e3e9699485f19124d6f4e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "192e5433913ffb0291ea2f483556221f677cd3f472ef3462b6e53670648478f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "300ae72f151e4ad0a7a650ea7870cdf26f81b19c3d2d93a42368986a90fa88db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.289.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cace4e222706feea34511059d48f2ba7a4d4ed9ac8dfa5d65f465adfb454111"
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
