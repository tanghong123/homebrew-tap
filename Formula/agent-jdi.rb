class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6199fc99a206a2f9a160f0fc1b5adf5251a5f1160b19e9418ed727484bb778b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d08d01cf4dc0eea0f07e0dafadb658ad30317b1828347bb836c59e20c9a7f878"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb7e0b964def9e9ed1881ac5d2a26e36267aa9dde6737585d1dee87e13cc61c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5f7d7674d7fc5fcbbfdb74462593584995371173cf71ad6038c54990b77da6d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
