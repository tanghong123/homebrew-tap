class AgentReplay < Formula
  desc "Interactive, read-only viewer for AI-agent session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.101.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cc91aedbe7937a388ccedf9da4473f5a58142ff0f5a5ceb4622d31f5396edae2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "212f6a26be64f1ef5141a3f52b0655f5e1dfed47ebb98e40ca1f69171b37f0f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57fb5be2c763ffdbba427a73e8f53183a9fe7d43ae7997717d5c9b5dca39f30c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.101.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8bc34685c2efd32f67403b8525cca378d5f012224c815d32b8b6a5e5dfc267ef"
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
