class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.378.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "40ad9754e862954e0c80913346384b54e1e1fc6294ce0174eba52a6267e62498"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4396f163777eee388ba144b984c0a1f10bc14f971aac64fe7a2f4d16cb7d7422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ddf8ced5d789cd6c987fe0b9246e721f3a8ef77f183c104484231f8e4aacc90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.378.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf8d3fad74b1b6119eb125867ac2aee76cc72065545408060c0792ac103a43b5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
