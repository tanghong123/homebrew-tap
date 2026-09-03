class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.135.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "584015cc12b452d32339c755acdf2b3a6262a91c0a112349f5a7d3a6afcb5fcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6f3f47c4f8e212ac8643a165ab54a320f39a6afa682b191a677bd0ccbd395755"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d563e796bca067e419f9c51456f3be4ab6bd1b61abe9c700eb6a5239cb9c2722"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.135.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da03a5f850ca302a4734b915aff716e294c498bdffad2ebe2bebf3eaf266832e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
