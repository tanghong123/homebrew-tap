class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.154.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f9b40973dbb4fdd9041da8e89b37aae5683b54beab40b064b44224db611aa25e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ba3bb1ca58e1c56da6837cd40c6a51126bc8f90f8f649efa7954b9424ff072d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f83f8e33f1406ef462daa568ae9692522f1602959bfb4edec4ccaa26a666a54c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.154.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "62e47b3f6afdcd0d92debe4ad0d9990167e9f7f2b37fa51d7a996d0153dcef92"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
