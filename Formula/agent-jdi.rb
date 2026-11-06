class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.483.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "89d98479e0b47691f07bc5a7bdd4ef33303963750536a3b55c1ded4032370b55"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "98958f98e911b844bc6913f94aae610d9ef78985acb03477cb6fc9ab7b2b5ec0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a39a621e689e9b3460117854dfe6ec7fc2cc67601e9f957d2103926ed45809cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.483.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8342e08c44e7cd406643467c1de7f73eab0a30b6e9b082d372d095fc6ea3a4eb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
