class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.519.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f65e5213e1e49c681e248c143ab23d9404881f21bb79d52d10a341128cdbba87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5026ef6dfcab54e5470bc3f148e7e1c74ec7fb50f0851dcef7b36e743efa3b20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e7406a00cb1d3173802a1d88946bca91295017bdbb29f40f74e54d0b46138b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "598fc0f24bc21032b0e2d7f22133a5a6b537bc9aad0dbf5a03f9aaf84fa9d0b2"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
