class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.504.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9e8ab41caea0132f03997fce436559e33dc5baa5f19f9c2a8c340d4ef5352fd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8b38c75bcb6337e80ee89aff2f5a9e1b3a2e315990565bb3d50b79c56684069a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea8880a53c04c9ef80dca9b88cb9db61fd87c8c7f0ac9a63853b62217be1e1f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.504.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81ec0392da8fa2ff34579cfe2872fbeeead282bc408aecb65d5e4a525a56c1ea"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
