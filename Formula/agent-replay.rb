class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.536.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ddd8412ad74fca1b1725c6519c3ccde30b7121ae82e54de3aa821b78c677f837"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "261a023ed74b5afef3c35aab300527f399688f17991a5c12c3a0f7a5becbfbdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f72702305ccd47ab68871615d4b80ce690877c946c937b9b4e698eaa92b0c174"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.536.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f2804562a3109c4aec4736ef3316b1a2ebf4fa3a23d686fea6864e7e0314497"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
