class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.38.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d0e74f91894560c26ab9537ddd8e6315f6c2d1f3bfa4f134f59dfe6bb71ca33f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e00f78ba2dabe9bbd711b7d70c4d432d9a042985cc90896ca5300f6443a30847"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "153253811a82d789e28f646d3a91cad57c8f368b0c238c5d5647a2b61cf921fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "380ad76c7a4eda11eeaca456127e1ea6ed3ed68d018715300c0b441cf8b2bb92"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
