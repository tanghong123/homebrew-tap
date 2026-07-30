class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.19.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e7022afa33dbb94efe8060e16dcbda41fe62263b40497ec02c4033ad80935463"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a8f40f45179497be14def59488e608f0dfe381bc1823236bd15cba9093170a5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "04140f94febe882ce8bba45199145ccde9a9f6083a6472a9542dd48ce46e7edd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "74262a3c856a63f1d58319cfb253539951b0b4cd605ce4713ed6fe444cc8549c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
