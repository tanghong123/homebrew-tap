class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.377.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e1bc031194a5632543b00bae789e635805098ffbaace05c8366ac06bc703115e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "fa14245fc741531f407bd1b7540c94c7b6900d307fa7c6ea5372d4ba9f5ebbd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7f20652305ae9e0320d627d1dd8626ca0e9cd65e6544da15ed82463e51e7ce65"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61232a02073ca81dcf41cc46f6021d93a44b60fc15129aa37aa7b529251237d1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
