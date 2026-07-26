class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.32.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9d574937434b89cfa51b082bc435eb9966579f0eecb8eccfcc4322ef477b3b37"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6f2f744a244d2a3a66dbcca00b4a5e13faeb1882d5312e570e330ace3d6e351d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8295fa953909000edc729e140bc55184089a9e599c1375837ecdff9b771d442d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c6c12a254c84b99b585f4b0c22c69ef441e049771f4f1d614422f6fd1d94f457"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
