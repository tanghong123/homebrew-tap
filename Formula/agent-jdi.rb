class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.323.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d2c892cd5edee7e80825a054bcb8ad8c7af6cfcc0bf722047158cc3c64c85088"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "7a0b5c9c36f4f3744e136d97e714603eec6a033f9f0c933c64317a8bd12b8ebc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c931c252e25ef6d27b03aee7b8d50bf966a15bc758c2dad79c494134b498631"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9556322f8847a32f2d77d00d1d35129a12cff7d6eb0cf2a796bdd7f630331050"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
