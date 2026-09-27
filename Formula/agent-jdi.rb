class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.318.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "02ad17d7822235ff551deb32419809eeea520b452a7db535e7ae1d42767acc31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ca4311dcdb7aef3edbf8b1f4f8c57dfab8043a16a7adc22767a1543fcfb77d33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "993940f7af68ecab091c287e8d344e8914d5e7bdc183a5f0bd7f957f34ab27ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.318.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "318045e5a88ee22c047e40d550181ba414f4b24a9f204f6e554638417c29e023"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
