class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "252a0638ce86b78095622913f59a695c296d5af47fb409afd1f70208a44a3faa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5a17e7afa8236d72163ad72e39242dbe9cb87e18d1f45d60258b292c241e372a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "217eddc9f93665dda89c0395b4ccfc81f62bba29c5c625b532e75ddb6a0eabf6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3677d417479886491b7a42e06795debe96114c6dd9d75ee10aea04390040179"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
