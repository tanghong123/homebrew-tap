class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.487.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d1cd97639af5601519ed230c793d82697a61b3b7b2f0f593eade2edd1129fbaf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "600b9195d6c200f974fe5e1c373bf1f5e2fe1bc28d4d0d8ca288c76c71beeae0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c29a2a9ebb27771228befa1fb95582a5d810b71601dd95f494c81d94a0ceba7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "87c028ce65899de408951e6e9ef7764d0be5da538d9fc2009f62be5fa3ad532d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
