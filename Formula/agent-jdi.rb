class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.25.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b04b33cde4f0302239506a7dd98264069819959ce0f5cdeaa88c1ce78a42f799"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7e757529f4adebeb83c21bdfac3acaf27f1456d09d81faa316574c579a9cd499"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0698abd2372d38190597de18fd08aba6646868881cc6e2a641736ea860d337fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.25.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d04f19353859bb540d050f1c72e961f0756658aa97b1a2f00a1e25c0a3b1ba3a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
