class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.473.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "08385838f10a4b919c0b4c02580c0d354b0aec982c6444d9559a25e4c89d9b58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "efd950049ddc83c555684c3c38cd33f77dafabc2380d3b11035349e4d94c3f9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05a738a5d6aeb24b4f58eb84e315e74c00f23c3f2e2800d672b569d07c3cff53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa82d53332e033437d903b0e0f0aae37b179cae25c6518f0477c72b242cf14da"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
