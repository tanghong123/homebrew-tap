class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.37.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "81091823cbe80ab793e4c2d34d6310a5d75379025565100a0c887f35fc424ec6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "13b3beb466663048270f434186ea6df96b29d753ddcaed514ddbbe6c4f9a28c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c7b5a239b5861bab6369691b8d08bee25b5be3a1498ae8ff1b152fed4978e33"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87d905b1df64e0dac9ef43369f18cb196091fe6baf175694039605925bb5a313"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
