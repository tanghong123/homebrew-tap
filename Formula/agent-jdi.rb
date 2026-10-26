class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.429.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "78ca44596bc9cd93308c531cee16c8e97d74c51bbc80428d2d5524219ae4f733"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8e08fb524f0d969062dddbe06445ad518f05a94cdea8057be6138ef71c27fb0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a8bae32bebc7965ec9ff4812312e9cb1540e504414e96a18a553dbfca967039f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.429.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "377e6826a40a6a9ae26cb2ee5f7701bc251c98dcdf48135c05d3b8511af70332"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
