class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c11cd2203b4d994a37000097a7204afc6410645775223c8496c12bed3d9184fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0d2a79a4a2f00d08fbbe4649c45ac047f8312f09f5d97302b01012c14ca0faae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ca977401f894fd53c8a0313ed4a3b3ea3b95cc2b67021a2c4a0fefe025454d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0bd2532a476d49b143b694e514b6910bcaca38bba3c2a0e65eadb8602b90e6f5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
