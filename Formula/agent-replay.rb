class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.572.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cd4bdc93e071187f1da878d58f7064f4b2eab0d9fef33708b4d18f1b3aff02e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2d78731821731a1a33ed772b5058a55d1b3ea61a1cae140fba8642807195ca41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "826c0577a77d3b4fbb1ab96ea943e7c7223d9ac12457cfbb58f269859a69a603"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11feb83c0e3a208f00a115ff5453b59b0aef91305a3a289a362db04de587243b"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
