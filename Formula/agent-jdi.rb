class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.537.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6bd1d6136f2d9607908c2ada8e5d9167074994f4059011849de06708546ad077"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "65825200fb6c68aee5b7142622c4710c64c52eacb59ae079af818fae1a73fb9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5620a1de7ce3dd5afd6c582a17c72a8411989fd6d978b2ea7e9768487f11006"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.537.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a20652b4c9292d784664493784dd200ab2cb1ed9b1462ad7b59d4203fbfcab42"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
