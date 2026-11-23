class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.555.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "36d93bfc224ccf846b5b14ab309648b522420bd607eb48d30e06f863a92a4fe5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba84d587eb4c999f2c9e9cdde88f2ab7e359e7a2f72c0db6525cd0463dbd2808"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ecc677c6a74c85de9b4f357f291d266cc138e70f7ed6bf61525215e1e014286"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.555.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6ad2feb305a8bb2a0fbe02d774211e0df41ab18839299e185b65d03bfd5d9632"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
