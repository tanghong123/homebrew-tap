class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.154.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "89be4a3972797cf943a0317716f05c31b5d9cfbf341c3c92db9a5e259af5455e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "d1323fe26975ce605a004343c35206e606347a200c56a1a1e68278a77c850664"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ea700bcb5b30ba165cba848f0f0003af74307bd77137973c5910a11bfe83ab7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4cc894aae0f02496ef14d6f466edc117cd95e9247072dc5b71c79bf2b678b7c7"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
