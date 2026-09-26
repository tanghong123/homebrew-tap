class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.313.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "75c793dde2d2bd630720ed17f17172ba67ffe0af9412914064eece42d627c202"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8c59f70e2b3dcc785c06c0e073782068c7307db8166b0343b9e320e54adf0421"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4208c295c2d4a7ba6e22d754bd61f0e65fe5978737700ac4a13eca9180e9006"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.313.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28f1c23e017c87ae6054060921204e1ae14e17a9ebe651b33a7fbb92f2c9f6cd"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
