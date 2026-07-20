class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5f8d05f85a67285c67226bc1cd92a995d653e6b3013c75eadf2bc18d3d8ae944"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2139091f1902d605ac4ab6f1e3938893b3c2a1e68c27a070a289e3b01e7b3a36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cbbdad2b4a7b0d148a9f98b6ffe70b9ec35c7180265d00f56549bd7bef66d29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bde0907c5653933487ddf4436fd4db194f2635907846559adeca368e34aac593"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
