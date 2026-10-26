class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.428.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "86455af184ca76f896456c60151a755a7a158e6a5e471da6d56b8ee0fe75bf22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7c0571c2fe27b70643bbfae47d0becbeffe72d96ea5aada0766c88f049ee6675"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "80cb4971a31df4f9a28643d49f1dedb8f6da5611d7e2a19e4df57018532dc4ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f48c60e5346c1411b8eed05afec72cc88e210fce5ad2f0b674b48f2ae8bbda9e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
