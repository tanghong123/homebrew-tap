class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "293fba8c49451f6361ce65babecb9c272fb221638f642a9eef750c7efbe86e52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "08b59d87e6c69f8f4f6f097aa0c212c1e11cedf6438d3d889daa3d80c5189f2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92f4b430020921a9a2fffd022866dc45c58de370ea9888f8982880f7f58593bf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de4e01fc9a36a0d8c805537d23ca6d08d2f76c360f276137b575ff2119ae470b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
