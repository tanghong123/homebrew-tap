class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.11.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b425df8096707054c267bcf79c0977abd51f2f7fc50074378b64ce6e00edfa67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "73d892e01744be6619239c08868cef9f4594090287f4690e9824bc54125c049b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bb152be6e1cde6c2cef4bc146890766da91568a49adf1e62ce2ff25683f98a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "442c14e6f78606a9f97e1df2a844398d0b11ec7fb976b48724d1e6d463136d74"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
