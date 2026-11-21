class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.546.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "01b61260641a8d6cacdb8928343f1194c4a988d917f4ce97cbc8788f48b0d6b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "99fbc0cb3d12f9b74422102a1633b9e84eea2c49bf4364017780dd5303111e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43da326c376f3c57695e6fac82df30c935ce7d8f3b5c09e226485a038ad2d45b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3e27a167f2b8b9d54d6f47fd03b465f8a49bc34fd034ac189bcdd39be0c134d"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
