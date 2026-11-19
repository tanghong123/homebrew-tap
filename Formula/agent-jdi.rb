class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.539.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "33b64c47ab922c3c91864a8a22dc7c62461c8910fb96cf28ad86de4222fd441e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "98e724ccd79bf48901c790f7691386ea2d848ca95d353f0f729d778e7899695f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26145c226283c85109a17f55b6e298e1fb3de448341a53e7e860f1641d455718"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d82d6bc805ef337ea304832a544ad0661f592be41a7aee8d15ebc0fc052c9d4c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
