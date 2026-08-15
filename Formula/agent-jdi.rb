class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.81.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fb6302da723ba2bb2d3fcceab4b304f4d24864f18844a74b4edb279c3f3457f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c9c060f8c9a6ebcc39045b8ccfefbde13564eab13d93edad84f6673f1295d1c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "586398d066295796324d36ea786cb6d38ff933ccf34745db0d13153a69a3334f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d764b5345806a4968fcfa3d77c31fe144797a449cdae9b64e51c118cedd4553"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
