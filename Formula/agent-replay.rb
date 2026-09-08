class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.240.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "df34cf997732b13bc268db216a004d47504430389c94b3bc9cc29bec7c0b0148"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6a7650c1e5805a1032f3e12e8f8598c3fe2aea05f09d825d6ef97c0d1182c2a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57f14b7562dd797a3b330da98d05856be0dfd071e0ae4dfb77538d8112b8920f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.240.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7309eb2c8bd4b70fb20d3bccfdc0c61261938971227478fa4183c53e1e42939c"
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
