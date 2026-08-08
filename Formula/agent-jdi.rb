class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.20"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "eb2b8396ae03014439f28fe467558c93827287793678d9ff3b45fb501e9aaca5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "e1f6c222b99662753722ae3b65685adfa965704fa6727d298a705ee956262883"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4dc0e0c6f45aad7e5fcbb4ec79fe55848028478498099574cd34f1af4940eaa6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f87237c2ba5fcd75c73e6663a29b2731c79eaf61c9b02054059673f11429bda3"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
