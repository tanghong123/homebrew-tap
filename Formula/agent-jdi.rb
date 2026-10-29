class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.447.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "658b2046998750555fe6cbde3ded103eeec97138414115bca9c41433792cda42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f452c289c1f5774ecb7d631bf3d0ee81c33b6c0b56a4e4edf91d457c42d8bf37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c52172bfdca3e1e0714839e9b65ab6b5702f37897c8f71f99a6f01d03473697"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.447.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85e4aee10ba893501866c112253bd4d37b8f2b0efe473322bba5c15d245ff5fd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
