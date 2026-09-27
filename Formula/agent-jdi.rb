class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.315.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f0566e6dd1a6630db1f1ff0acf0e82c62eaecd6c229d144ce437bb35ed633acf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "969f9f59cbef5674210b22861ae16c2bbac34c09e4ba36f202af7632fe83b67c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13c2a4056b49dc1de1ec1b5f142a4b882d324aa7582a8c0cc1b43c16a74f66d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.315.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a91e98d32020f26329fb9679ad122a02584be36d90cad73e9821db88680d291b"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
