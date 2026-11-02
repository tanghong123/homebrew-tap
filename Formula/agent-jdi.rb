class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.460.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9f0a88730b9fbf869448bbebc3bb8c6e3b5ad8466083d9bddfee288b5af9e524"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "21b04bc292aa477df6fc904d796af9a5c61790e1fcb2886cce7a049804118321"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22ac324fe4460984428e58ce5f86db1f87ded4005effa046b34d487dba563912"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "81cca06f231c16598cccac25691c258a265f36af4732a9a71df41bb98d8ec7e4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
