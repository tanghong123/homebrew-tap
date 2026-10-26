class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.427.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b36f8cf90cbf6f6ed67df691243c72842102fb24485a7efcd826475cb7584085"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9f53ebe4b8b8009c3b0eb94743d803a7e5ab6e06b1ae977f008ab35a0cf7b4e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0079ba6b09d1218b2ae92ee835b10acddc70a9bb1fb29a7a6bbece39a73f95a3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.427.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0cac6ba7e04afe10e2c9fe5f8d8d9574286000f0b73fea6604dddbeaf0215645"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
