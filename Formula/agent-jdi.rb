class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.526.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f0e8e4b6c6fe939c8d52c4b3e73b83f45f4b57f149314cdfaa146cdcd38814a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "77ab72dc401419d15df392135a3352e6ceda015df49bc3a38e3bf74a69e4bbdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "303dec966d641c18f49fabde21c9f142d987525469eb9ed82cb43ca17d93863f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "23158704849ade06da0cf31232ecc9a5a2e509419bd975257f4b48e01807f368"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
