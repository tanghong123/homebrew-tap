class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.499.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "baa08bb39dbb5bfa795704cb9b510b4a65c8732cd7f6f0f32d1f054d6dfebd6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "92e2e55ea8b00cd116916c034733b31731984cb7290d937f4ed3445e9fd52167"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d13126f00a50648df61ffed5d3aaca9db7eb89ffba335a518ed848d624037687"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.499.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0427f2f770f50ebedd9bf1e9bb2729924b4fdfdcddaf01a105bed9dd208a516e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
