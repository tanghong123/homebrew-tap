class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.222.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "a490bc5c0a22a934ccf4c7394dbde95cd4d6e764deb1603f753210996e7800cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "a9e529602dc2f42c954e8d19328c2506c04e0cd1461cce4048a989ae6facd36f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b337888e9fed5e4abbcc80ec0923aa7c46b0776cf74171e59bf7badc05d8151"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "55b68b94429e07c207b08696f8f4df1cb0ae217d8dd415cedd3b5e220f0adb79"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
