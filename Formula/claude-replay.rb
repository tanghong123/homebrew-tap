class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.39.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6796dc393123aece0e39f0169da5fd9a1c4df0974b3a75c49c20408c109677e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d27c49ac8f87020c73ed0760b84fc79947a7595c9948a39f27e1319741629430"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eec2ec3fb9db5976583d527427f61c0c56d52d5b3c3a7885480b9fea491da1cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21585dc8944d22346605b2f176e5184fea9d191126ee56d6cb211d22879cb44a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
