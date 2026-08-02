class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.29.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "233b12960824caa6277c0069a044cc4bedd5ef0f0723a36eb02f126903363314"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ef69cd7bef9841a51cbc1ba7bdcef62611ae9e051b652e5da1c96738d4e15509"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c398c1c9284f9549fc4357dc912f923fda5f3f55308acfe489c2217b2600cce"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76da227cd4b32ca17b702a78feb7c0c409be9cd625f23f9c0cce6ce011cc954d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
