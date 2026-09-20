class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.287.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "534de209092de9b029ae32a712a42991ea7f17a070a1d0095d1fd0651ab926ce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "21c6dbf3b3815af998ee1bf2cd1ef5a4763c21c53612e215b81e1e0514ea42a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dbcc9fb0294fdb4e4e2ebdc87c0611998cbcce31268b087753f1e7a67f2cce36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.287.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0725a5024c79b4589c246efbb50e770532b377b693f2743911ed5dcdd5b86e80"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
