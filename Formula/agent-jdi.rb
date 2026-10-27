class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.436.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b91fcebf97f335eef26f8ae9de8471225e6ec29d32e4fa0382297a65dfd92b24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "03248585cf77b152d7a0c2380903e4b9db8e0afe2fc56b15c4941ee586e442e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "954c422ecdd3eb4c5375a9f6b55b3f7f7ce0844e98048adffa43691416a2cdb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.436.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "da19f20ea35c6e9a7c9515b5b2c7096178fcec524b8fa7681b00b7e1ef76c80d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
