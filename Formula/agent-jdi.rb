class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.74.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "80b4a187d94a3086beefea9694cd2bfae276b800436fb8c54ce5e56c5e483bde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "faa1b6a05c959def9939d9d1237a76fd16fd9b6b54f3e2c865c1183b5e83da80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9118824f122aaaaeaa6cfafe7ced704677cf2963da1693a2de3c57d00bd710e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a50f1ae3833b05bc2faed855db8c3cba00bf1828d69d4077980b9bebd78b65c0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
