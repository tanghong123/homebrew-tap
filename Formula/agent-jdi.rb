class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.346.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d93f76d015f8d1611f440962523e726578e1e2f98b365392b0c6aafb3e260bb1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a02b6ac8bb94c0c25f1363bc5263d76af27064a112e7a14981f445756f0724f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ec464f35011dadfc2f394d8037ecc205a10f1ae3f0c75a863ff6563fb866d2b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.346.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "434e75c6132cfde223a0fab1fbba2ad916a5421a953c1d908b39a18c630cc6a9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
