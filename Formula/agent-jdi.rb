class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "30ccea22f3aed27613a37aa0184448de340bdfc737f814e0138c98b097322803"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8f881ae6075d60a766d4551f5a3a3f2052ee125ac37331da61e49ed7e93f06fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cdb11fd1319e72b4dadabae7f73b60e56cf5802f42934527d6c057664e4eb9cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "40955302d67a1c5be5fc3ade253119f9e87fd2797fae4063afb026dbeb169abc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
