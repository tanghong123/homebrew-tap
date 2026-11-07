class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.484.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "90a47ee80cf3ccd45debb737272f11130bbbbb6b642adb8a592df91356c7ef40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "68798bda824bd1a6253583cc75e65bb857f0f46d554d879ac14a2370396ad971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eb83cd54b7dba1e7e4d3642dad9223a68e7a2c03f81213235edbae708fc488f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.484.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa61df7fe548f16ea9cbc1617a4a50a680d0fb7dbf8149f4d5f065e82e6be6b0"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
