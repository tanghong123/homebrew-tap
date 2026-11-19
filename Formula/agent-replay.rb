class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.539.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "16d9e613c2b3ab591278d8740a921585005387f258b0bdf0da5f4554e8614886"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f515f1ccb43eb91594deaf2e1ebbb3d3f7bc6100f9c54116680dc4cefb145c2d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f12d31a04b49138aeb7e548940d8eb639dc1651fda10daa74a9384097215d9f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c710dbd0b55ad7af9e36d96d03f854d98cfd02ac5a882df6c8055365aa22af93"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
