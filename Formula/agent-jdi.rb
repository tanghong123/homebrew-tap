class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.244.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "521491d5a4e8b98d9da0fe8e6de05b308083c67109a6ee7be7271606b9abb1e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9ed545cb8796ed9aa79bcc2d496e037b5a31e1ef9c9755c4bd7510a1cdcf771a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9a211c516a9bd7ecd9c5e64f61e1a3dad95f7bac978dc4c33120cb65660869fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.244.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bd016bd1ce182d9e40c0b508f2d9b3d4f7578a6f830d58477afeb015cf12043"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
