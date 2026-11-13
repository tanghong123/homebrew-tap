class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.517.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "9b4c3f1bfa793d3d4110116a4387ee83f01efbbb645628ac1db1f2c92867e23a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "0b6cfc000013443e52bcd323bcc9c642a4d7ee193d6724d4bf1b98a8a32a4a81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f09cdaf9fe5fbbe9c41c9e1bf6f55a9ea1c4358e977ca73ea7146a2058a099a2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f3dd26d60551a3559dcdf604180ea9b213d1fca1275af3a26d28d35e25c8f66"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
