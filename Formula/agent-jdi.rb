class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.35.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "7f0d3270dca6d5227343cbbd64e617eaf4b4fc09b3aa49c142f3686acc5e099e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "004c507def5ad8a87b9af830083e27235649c781af589841e7a5f7089595fb7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4c3006889cd818c1564a457b7d51f5221d4fd3346de02d67e5692154bbec4a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.35.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44539bac3352ea1b912a23afa02c414a043009b3f5c57db303f4304898296d51"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
