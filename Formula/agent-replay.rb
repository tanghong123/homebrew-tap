class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.502.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "eff96b63e05e41c7ca2cbd12d34a6dd3658190e21575941d09f3ad4315be7d1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4380e3bb0f99555e179f7bb4f95cda30736cf9c692bb5f2dca3d1d13440c0fce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd9ed2ae9e270e5fb0296a6d5085a417b1979de1c32b135508973634848475cb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.502.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "768edc1ff8f03bae2e732daff1a600cb9afe67d7529d95a4fecdb7ac565339e1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
