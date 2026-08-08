class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "14bb875ce2782fb3ba66a34dfed98f02c97850642fba12379f5aab3d8c0698d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1453194f919ab0dbb4ad2628115683029287be992cbac2d192af845d64b3c7a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cba69db3f22c5527a1f827f401dfa19d1afd717d9549b0c70d3ebd4e180e9b7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db9123981107652b64161e89e63e21336b09eb8e4a6c6b764805a55e63dd9a34"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
