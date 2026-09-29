class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.326.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "92e43b0483d691d144e8f2025b3944ec75753734e847004efa9697864c30af15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1ec77b83e98b46ba772b2a83c7752494d461c34a0667a31262d1b84ad83b8a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c14ba22a7b775c0784afc254f204a17cf259bedf3289b075ce2fa6f987c928eb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.326.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7998ea115eb9d3f1a66f30c5bda31444b171a7f7c552422a98ae6c91b99e2548"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
