class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.68.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8696928c439edfa397cee6bda20a2b5eb89af6cdce68df2a7328565df168bdbe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f433505e58b49ed114f4047a1a358560aa21a83fe03cf729d74ba8e13db3c800"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d43b01c12a430a8ee2e35738281e20593882e283d50d28b01d1da51c2e9f8548"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.68.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09ce6f4bf363cf58fad3be0b7a3dfa7a8281f3de12ea2379dd13be8a25cc9555"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
