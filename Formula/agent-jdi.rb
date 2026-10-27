class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.435.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "2378d5ff0f14c34e5da64559f40515823a4590b3067520bd0f0d6411d311bafe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0fe5da9943eb4f9032f3b298c923ff67fee39418c2b4ee4f4e62ccd615be7d00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5570dee6a55c644af05bb10e0d9c24632451124f8b20e20cdc8d0a0a629abece"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.435.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b5f10f18edcf90c26a1c0c251d611246ff47447d37ef5f09bbc59471d920f73"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
