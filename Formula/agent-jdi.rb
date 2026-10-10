class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.369.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "75480775229cc4d1857954e72d71a998f8d46c7531b1c3ba25f7ce87d20e3c06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "258804acf83d262a9b1ca62c49a01e09d364645ce70f8f16d521becf837b518b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f678d18770934138c9fa3d20ad8ce6ce91a7942b1b194f5791ba3766e59a568d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c683d450ce92cbdc54585b180be94bb47917781d55e4986afc10047a9150f25f"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
