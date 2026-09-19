class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.281.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "67969343c5529d98901e26057d60bdc8bdcc33903cb7f71b1ad6e7c8de5b73d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a107346b86cb2f733963c9b5e196ee38ee56bc494a14d252e1fcd700a3fd67e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1845ff0d057a2e05362535942e3c328fa5ec78de124eb72071be635005e3b2b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.281.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92a5c3da9bfb4b715ee846f9720e0c41a1e3c264be3f004d7b2dc6df745b0625"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
