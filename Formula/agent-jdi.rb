class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0de5c8bd2fa3910255e9ebb5e502f6a3e1bac477701d36f286b434da331d7c02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "4757453e1fbf0f84091ae65027e444950618ee058077960465b4493d9944022a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7dc7312861249ca8b0c33e92329f53f1f6d34512d00c71f78aa99a99860d753c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1384a97e2f66a23cef598be1114ed6d739cea9f20b8a7578c2722133853308c9"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
