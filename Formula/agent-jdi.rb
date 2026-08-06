class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.41.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c5f1a2304f265dc569a925166f950edf5b3d2025ada7334cd0e645ab1b7db1db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e12ffcc4e5d3058c37f8e7368fda7b1763899f2ffafd5196a95ccf6d7c9e6f8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2e49700be8e5bdf0e0a3b56052b169b23199209e58da7d827799602e0002635"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca0c7bf3a81f31b22aaeaa948a22abd0b854f2d52bf5d8c2bcc094a673ff6ba5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
