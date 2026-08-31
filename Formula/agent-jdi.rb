class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.120.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "571414de5d16fe8b2b263183c6aaa6097701a68f0916447f8a744d5164fa3cfa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e8d1eb642b29f3581d4c51318ebdf7915d95ba6da72c3841bc6f7035a32a7fc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "917454e59c0a7700e52ba3848488db1e7d63a1c2e0dd1881fa4b240f0c466482"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.120.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1164be1deb5ba4d7b70ca63d28bdf9c65262aa41150ab40a3e133f3342028f35"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
