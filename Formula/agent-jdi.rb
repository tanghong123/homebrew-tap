class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.202.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "54a22394431af3f4d1ecb54187d2e4cb6c2962ac12777ddec614120ee4fdca58"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1d1a2d0bd9877f99915944ac4dce578ea2a0697670ce0cc300df0e97f3ad4977"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7505c941cee10baca74f7fb3e7e67740b651803e988f9d1aef70688fa1c1239"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.202.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7688861cd1275c354723c38eb15ef407e8395face5d69935e897674555746c9d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
