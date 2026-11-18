class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.534.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e84d2dee7f3bb17d10a7b4f2b4d4d608a63b769af85eee8a4f7f1f8683ede61f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "34de2029c508021e2cd0356557561c69383866f79db093457e1a77030712cb18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58eca4f3b66a1b270286a4bc8b1b701e3e9c471e40325135e823444e77dfbab5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "54add8b37152caa56e6886fd3742b034b8edc4365ab6c75d0e8deaa07e7614c9"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
