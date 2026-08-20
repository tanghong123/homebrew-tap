class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a05b7fbad8ae63995041abd62c9385bf34f4e10f0abce881f75b8687cb590754"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5659b31f5459143327858f79ab42900fea1b75e474ef746c32a7e20d01e091ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "789e0f155b024efec4455c23f49359fd5ac40ad7a4b586e52b559448f19c5dd5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f605afe1c0b8048167050b51bbd09cabbeda345ebbfab7ac4a1f0490665d4cb"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
