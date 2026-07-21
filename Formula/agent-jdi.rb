class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ef62bb1a434810ab0b338c4f25e8ac7ac347b2bf489812e1a1845c516ac7c3d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "868de3b831bf65a02a7761b8bfca9cde43fac9b0e790fe2302ca8aa7e10b876a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "950e7b1e5b4dedef132ab2f0c36f8bdcdb4f341cf8fff7d4ffb1f3e987731620"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b6b51531d94a439b6a126a5bdc18c4b13d212d56641b64f11d254cbbc9613242"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
