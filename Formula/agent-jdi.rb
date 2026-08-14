class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "999eba8cf16d82a0b4eaae43d888f357aa0db162c587cde64dbf12df3a727150"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "916fea205bbd64c56cee3764082d98dc2be2561ac8fae09c70b7063b2f4f4f25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61866a2fd73b43b5f4162c22c3a919f25c7eda90db87581689b8836b403a7652"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1e0f76a465a4eba4d5532102810c37ac2da45dc08fa49b848ef7d11c1d2da77"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
