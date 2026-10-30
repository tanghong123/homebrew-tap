class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.456.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "494c70db0ec169cb5de1a86c28981ee22fd93608b274f6cc3880d44a6d31e196"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f01acf5f8d47b82e87dbdc6af5ab32e4290b6e2165d1529ed8da2aa8557b04cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6de5b442f52c43e98df0e28d056249ca33791dac087a04141e3dd277f66179d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73b09f080b42695d17aab46111fb354d2b090741de05375d44e722971697c210"
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
