class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.205.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "62d55050eb24ddb6ae5a3ee878977f0da2aeb425acd51812dd360a3d559605b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "17429dc8c5204e4610bcd6d523c7edadb3ac815bbccf6d6d9d14ee25747bb153"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bfe9ed7e08248b7e60a5521295416ea1f7b773a48bb70dc2591bc2d04cc76824"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.205.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe75ebbc84e495fc3827b84027ef51c16e415779daa39a5d7f8ec6ded47f82c3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
