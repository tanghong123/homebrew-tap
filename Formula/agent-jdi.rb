class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.339.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ab2b9bdf470d00eacebcc66dc4351a8d0b4e1170d6cdc73a0f1dea32d5a6fc4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "79b8948183b1b379c31f38761cae215b887a13c35970bbae61f9d56f81defd19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2414a0bfe9a212280ec6122a654e27f297e09bbde8b0692830ff638ecda54e1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.339.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4fd9b752be3c50dee425718904528a6f8a9188613e35a1fc33576bb7fdb1e36"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
