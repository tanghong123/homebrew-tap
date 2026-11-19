class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.538.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "622a8fb3d7332906af1f39885f6cb236132bb06591efea4c5c2613584d2c2b08"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "aa18aaeee58097edce0935626917357c9b779d1207faa26935624be168d5bfc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97fee34d2b3716d08ad14870e2dc6129abb476d49bfe6cd8742959629289e104"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.538.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9dc4d6b78a761423914367071558b377c499e0d48ff8dc511bf75784d5d8a50"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
