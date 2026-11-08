class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.492.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "afea61e0ccbf3192d9e399468edd83d49c74fe38ade13229a3fc1c8784ab5931"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a6bc672d6a578eb1de1735ad596df612cc6db7e15ba6a03e6458720baf32a496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a962b0e91851bd4f717d97839d6eb2ee264bcf122835f826a0ae6991ac69d6a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.492.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "38b2f4d8279296ed00096aa3f6f78cc1fdf2f053379906fb27b5570e87daeeac"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
