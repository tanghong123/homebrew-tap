class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.520.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "0830ef12a40a9fba068776bfc5038bf2c0c2f515215432407134748f082ee279"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "9a7194bee1bff7eaffd8e42d55818b8c9dd6139185e1106f24bfbcac4ef4e886"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "183f9fe4f24adda57c77bf79de8949cbabefe61aa69350441a486961a5237a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.520.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3529e5aa0c49225a0daa6a91791ba3749ab253cc1a217d7aa7c4566858632da3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
