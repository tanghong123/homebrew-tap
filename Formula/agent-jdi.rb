class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.284.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ba7b82bf9851c02245ae8e14f9ac8b67d0f62bcc9fb30058c6a2fb8bcf92a16f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ff6780e36aa657686b49ff563fa42e9692b698d895100a78826be42cf60d7d53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1db677fb2be6c253cd28afea851aa5a4ad667a7aa0cbe43654ca5100c99af725"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.284.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b51400961eb1bd472ce8b481ae15d44f2a2a904e0c9e37ebbe10ca9df3080547"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
