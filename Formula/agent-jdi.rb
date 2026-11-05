class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.470.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "de8a3c40d1c51b25e1c593b191e4a19bbbc5e7d47038b7d76d4126718fc41a6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "cc4314a8fc084918da767fe5f9342cf80e8a1bc207bb14c2c575e851096ea87f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1e4933f787ec50fb761dc27f1e1979c8a55a4b515b81c1258265a5ca0690ec66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "040fbb7f7d2eef453e7d04ddb8fd0207c2f06dfe925e42a022182fc4b319c0d4"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
