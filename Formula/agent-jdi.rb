class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.88.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9fce8fa259f0af3d04c003f893273660fe8f3e199a4a7c1f018130bece74351e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "05210acf260880ba2e6250cb9bbabddfd4c03172fb7a7ea2027686b5c6d40207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7ac9c0674ca9ef9a37bb2fdaab6b9a5b48cfbefb407a9245a7cd0e5d116baa6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "80a79b8b58cc8e08f284480759620d7002778c99cb26cef1f0615de8868962b7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
