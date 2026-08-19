class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "770e85c20f77f9c53f6bc888cfea9a5b42f0d2937ca1783ddd548cea37844877"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "f8471a3a2228ac71851026b8e7e1b479fc0d1d82c296172b985bc42514ddf69c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90798a272432c6ff23d9c5ae94d1fcabc437e6b7cf157f7a0411e3e6ad58e662"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf0effc0a4d8bfd4eb8952c173fd3ea978003315a419a76b767d497d077b928b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
