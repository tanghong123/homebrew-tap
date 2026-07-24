class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "68582071e64a695b0d1a9ae2b8d14c113add2dbdad9cc944d125a2d228db1cbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f4943e56d7c8331389ca321c1583a51cf563980b4cf1c1852f4fb2ad94e3134d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "deec6457c0a4c82e1f28780c787949bfd199753cd354edc5e6f2f1d4241dd027"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc4e6fa760d0c169d6678fa5b1f333834b9cdf696ef129410c923f9052e64e67"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
