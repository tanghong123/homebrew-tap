class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.298.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f05ea85b15345bbe722c7c2a06afd0d8d5df138b133062ff84678b5ea15d4d76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "35dc4d0627e45e5cfa4f712aeecdac7eb2d63d1524cc06f252b7efeca21d34d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a8fe5226aef11db61e42de2f17e7364d387afdf506fa2b0385edc577ef128b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.298.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cbd8de8814655947498aa595295a7ddc8248cbefb3365d273a0eca8e17432f9"
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
