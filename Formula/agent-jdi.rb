class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.21"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b025778d1a55dc43e454ba93a4f23f98ef11efe142741154058f64c4a9615ab5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7e9c2c500bd242528d2898bf241f32e05dd02c409c02c4d69b1d2c749589d30f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "681aec46aa4a318ba4b39c21993ea007586604fdc220700bcfc13c0f4ab65cef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.21/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33aa833d4b6cfe9c89fd7998e28fefb3fd9cec9a52b1ed1bde664009ffe6aeb7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
