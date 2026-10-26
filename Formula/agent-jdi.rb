class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.426.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "93de56ddf027e27a97a2b8bef4b2a95e067edafdd586e651b5fc61f240bf5938"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "333b11f0b1e7fedf54985798785b4b13df4e1b7661b99e57bdb5bc6df267d7d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a758ceb2acbc64c3769e90868c73d8252c89fb89590436255b9817c407e226e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.426.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a60c60bc59d56c21741e088f255f9a13a546d8ddaffff64d4b2eb3ef0e3d04a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
