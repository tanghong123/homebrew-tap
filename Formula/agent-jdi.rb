class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.252.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "ef307e50a401b36f3a8c6a8b69d151701b57ea8d3c3cbd7fe53435774102ff0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3982abb5c2d1a91ac49068f1b17283dde3ae236f69485cd9f03e3bccf02acba5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dd5f4fe93e0c964368620a20552a0950fef24deada6a97bd540ccbd1507ff3c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ec72e699ab54075a46bb5e9438c72e88d07ba63b20b7e6639f4fe04d029be43"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
