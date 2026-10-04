class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.345.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "adcac6ada0be88f61302814ea673f99e53d69f5728a97973dcfd53ef1baadee8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "38b0dc7a96f07d22dec8fe2b41b0f2ff9371e216b73b21d671e0867c821d68d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5426a303d340ed8c22ff982f559869a79fcd3a4fdb7d758ad79d0a924ecf78ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.345.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "72f43627b8c5ebd746122f099097cac5f2c11ce7eb3e553c06cccc45d7753ee9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
