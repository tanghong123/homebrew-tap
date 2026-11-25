class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.566.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c04cb2e53bb8cd528be4734662e036d2139de0f14a59ab78eafd573cf36bf677"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "88fed9a09acb5cf692876d547a5371e5b59431306305c2b3091bd80ce47c78a2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c996b5a02184b64d2318ed9adbbb71aa881d16686541fa5c863cdd3978d5156"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cadece9af91c3fe4a1997fd5012a0f6c9dcdf9fd7e7e377d74b64e5152654980"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
