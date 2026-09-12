class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.259.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "cfae994b1cdb977dbcd39cefd26f95aae596d9777aa890882813d0bff11ef6ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2e24382152002629662e2f4abef4291b132c149d2b3e6e81ff94b63444f3790b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72ce4e3c0388e690f33ff74e55514e144867808656273c3fa1c1baacd203c149"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.259.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e936aae41caba9ddc0893a68f1c0f94a55d88e0b2326b531624659ed00ee12e0"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
