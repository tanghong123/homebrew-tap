class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.283.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6355df894370d4aeb3b8f2932c738f276b57c9365bb06e5d58045f6a38affea6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e60178e9328b26342ef8f9e862039851d29e543116cbc44371f4ea3b3dc82ebe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4fd32a9a5e0ea5dfd62783917ef5d146fe6c399055aad07fc8a45527b3116ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.283.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f9b1d22f90c9da68009c58a2ff1cc25447fedb7b2f5fd112533a4491d9efef5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
