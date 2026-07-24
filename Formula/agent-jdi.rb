class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "1767f30e8b2e9eb6917d031ef491707f07f232a64093d577339ac43d1c4ffb5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8cdb636d132e5245456fbb5bfb8d4d3e83b5eb200da3c1289c734c2240f52e48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52e6b99059a838c9ece71cf69890b8c11a0829b596e53002474cef9e88a1d676"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7609b524eeeb49f54873e4027d4420c35f052bbdd4c44eed8a5d54318732c09d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
