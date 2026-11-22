class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.553.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6e82c14e668f643b3e9989c0ebadd6d683aaca14d43749d79a049607a7e0c44b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ffffc2e55c8112181dcf7117afabd6e3e07de12ed6e5ce5ea6beb3926dd852fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "320dfe2562d1d5bcea2a06175d0687fa11ecc0cd2010baa988c9badc85c312f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.553.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50f4c7b35742ffd0146c76b16c2de16a46bae1b5380df6085d9445f18d3611f3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
