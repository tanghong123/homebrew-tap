class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.110.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d9c62d82ab24ce0f703fc8c6a66459dbb4a418ed491572cec21f9c6cda16a8ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d6eed9fac337bf33a075ac58f3e7bd51b6f8c305a663e1a11d90ff425c7a8b28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54aaa21216d93d0a1941a1f15118be579dfc0ffceb7e3f338c1f77ed449357ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.110.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9cde82594ab3a2f9e52a9578853e10188db4483679dbe164ca0036814441450c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
