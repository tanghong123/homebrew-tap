class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.565.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d81770cb213edda2e3ecc9e601acfc6715a04d87b62e34ede40baaf561fbcf3e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "760eccd736d21694749a375f58c396d33748b8827c633f16255cddbcf97634e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b0fe7dbf29848f726357237c6ec396d6814077b67adb8b1e2c6425e7f131df2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.565.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a3fc0bf17142fda6d412cc7521937743a7812324321ab2d92b07711c083f348"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
