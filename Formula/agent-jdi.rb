class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.25.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ae2047353a71e0e1acd5c5191f0ed76e86ec9156af481fa78d60952121ac219c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ba0a5d0595f149934bb09a398b60f7a008159570ddf611b0f020fdee3d84d3ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "386d801c0e2c83daebb63bc46f02a68b74c94eaa3afd20166bbb5c6c44a01431"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b6707e8e3a4a437aba54457c7c5b6125ad25e462d57c6b60a39a171187126dc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
