class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.107.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7327155f6527c818d0d4e702641b84253a254ddcf6761564cbde12dd293ade3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0be5b4a266608603b3e22e809ff03c74f4b2782a0f0dcce942652f7b868c9b75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23bd2fe26edd52261099bb4c463796352a7abeeda9459e907695e8d6b472d35d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.107.1/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1f0b0b3cd0ad8d9855b248c0c06434a33e09bc508e329742e84c2d573c8162b1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
