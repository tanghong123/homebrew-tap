class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.440.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "85aebe3dba761c514aa1dd790fd2112ccc19204a6ab4564f161a52778ca09dc5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ae654fc73d50821d4400eec12f6aefba6ad6b5490e03e204831de81888515aec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8dfa285025adeed74fe32e2e3ee172a9db009a3e3c59336589bb0478ae14df38"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.440.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f28af3d4343151dda66b52a040666d5933b568dc78bef02610b532b25b0ed868"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
