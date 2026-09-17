class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.274.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "355693b68791ec4e900fa6770a7ba848c17bdf31610675eae41b5c226ed94dfe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "75e07f0cfc7919e5754446c57c18d1552147ff5534d717efd20aab7203145469"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eed057ea833b6e0d3cb0d15ea5f7803522705db6cade0e1e950500d8bfd04796"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.274.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cb1f90c6c8c169be70fbda82dc21243401485f0c387f77b9a123210bb7e466d"
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
