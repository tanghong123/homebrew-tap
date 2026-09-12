class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.260.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3f4ffbbaf7d74ff7d3a4d669768f8d1fd220f49ef611dd3e7a7cbf49b3b04eb9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5ac7f43ad6632f6aeb3cafef7a627fc2bfce624518049cd22cdc56627a88f454"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "12d986e0bec5d90eb93b722abe5226d5369deba9b6dd67361791b4d9766cd0a7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.260.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85f82b421c228f767b66675cd0b128fba35fb4fcf0c9a5d752754e41703e362c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
