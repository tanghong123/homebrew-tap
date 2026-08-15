class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5381b0c26543a2591a504f10a981af7812db63bb70e357115da1bced2faa953d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "769e5adbaf7f5a35bf7475d42e7923d1f46c7b14c8cd074fef5b904dc0c5c515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24c4886f20835abcdf5f63d1e67043a396e5d1e7039db72d70e79d9ea72284d9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cdcf1579feab5d168b4a607ef4b121b1d1e273e915323dc066b33f727de9363"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
