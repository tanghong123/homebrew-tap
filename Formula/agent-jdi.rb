class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.221.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5048ff3c428bedcff889b34a899867a4dbda8af5a6dbaccd0b44814227ccc859"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f8d404bb311caf071959980834393b8572adc54720ce5adab8e41bed8505aef5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "75059029bb8a876c0ae0d52aff478fc74db74e5a3063ea9e1f329fed634211b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.221.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48879cd6a6d69eaac4dc76499b464162862ca7365c6404426f67f6feeaa0a3db"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
