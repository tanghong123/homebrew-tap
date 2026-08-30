class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.116.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d5fd84abe2ec76cca105b4228055dda039bb38ebcc410f74f85388a131a1f195"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1eb80d21cf81e6eb22c12ce3cb98991f681fd35d46d41f78198b1f37365d6d68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0341b16581eae543f3ac8a08721c614d07b4025a354127ae11b40968f134ecb8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.116.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac89d20b56bc9c20b4b5cd99d4e4e3739b1682c9f04ff646922f02ad00c95d77"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
