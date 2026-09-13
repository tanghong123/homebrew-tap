class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.264.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "201b07459419d629486ff07d80a866065e3d25dfa336a7427b810f6ad0993c44"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "58f3c0b30d02fa09987a4b31b7b6c764a30aa07f0f93207bfb94aedb50871c5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58a86644fd878905b47960e0f40738cdc8e6fc2b2d13e4b9da7abb0b166e7328"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.264.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd4138b01ea9143d6d0c7cd0a96e8ca7c1cfcc48b249496bd3edf14307b8fd17"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
