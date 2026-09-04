class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.162.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3f2b3a9b49cfd73665efcd9f51d888575e3e5bbf34f9d274fff387e64ac692db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "97aa9604032418d0755c923f5b93afcb5c4feae9034844ec7d01b8d5d58bd2e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f936be73b92a18288b06f7fb0cfa97f2445ef22e0a855805e0204cf49edb4ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.162.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27d49b10802990faa476ea0db572c2ef24db7d0e131c2ea17bb8b43d7f670e3d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
