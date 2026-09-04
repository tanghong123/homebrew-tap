class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.161.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c7282b415a7daac146b4a789ca477794cc42f210339dfa5ad0fd2d69964f8ba7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "139e675880ca56321946bbf6f1910944e8ddd8218110467517191c3018e3f92c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a88d40ab8ec94b35fcd3ae0aa6b7ec3a04203d60a475cfb49c197f9e55c3092b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.161.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "309d2e3a8779785d814cce4e78c4c1f94c04885599d00e6fe98e09dc73e027be"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
