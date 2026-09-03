class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.129.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "797faa59464722aefdfd690121aedab25d993a5b020ffe5814b8e6c06fe8f714"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "02e931555625134124e75c5957e0d8d1b215a00c5210e5800a74c625820bf742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5819d426087d64eef630f267856e3c75fcb150b91cf0444f12691e1342be2b22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.129.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01d0a94f78406e48a093d5684aba20cb3d7b7ebaa2ad9d5fcbd61fc368b6fe2c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
