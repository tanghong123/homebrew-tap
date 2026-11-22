class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.554.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08cfd6a14d5ffde5c487be63e48cb4721527fc5931fe91b8d01f27d5c1fe36f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ed5a0bf482200810ecf3f8a4a535a730dcdbdc1cf198b0966802ae34e7471171"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88decdb8b1f664129c24dbfb24ae06b6b8cee268118a03a50b0e785208930e37"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e560b666ed9cee93af4ac616f1ff4fad15c85fb05f462fb7d84d9a827c60f3e8"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
