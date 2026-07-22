class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.14.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ece0f27193561161947e73d40741f5631e9073bec3ceb0163412b4383294f438"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5bdde8110d763623824b983908001144e5432c314a93177e00bd086bb12e71d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d01ab8178819cce3fc6cf694a98670d061390d9887564ff60701ea3b7a251387"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09e9af9cb024213444bc6c722532eb5aec537f7fe9d156c806aa4c70a8eec86b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
