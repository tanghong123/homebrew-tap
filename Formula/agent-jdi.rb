class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.390.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "484cc9c55a5ea3101b1fe5dd5b600c9a877775edf50e8801098d2a46fccf4fd0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3f6c02ace853b3449e6f947a3b9904c14d56d0cadd0d9aad70db38dfa09c6aa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "210461f2712f4feaf920922be04ed67d538fd4749843a1df339220fbb1443d70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.390.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ff1986ae0e2ebbadec6f28f443105c6532e2a6f37866a81d8574c1e3dea6156"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
